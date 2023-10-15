resource "azurerm_public_ip" "public_ip" {
  count = var.appgw_sku_tier == "WAF_v2" ? 1 : 0 || var.appgw_sku_tier == "Standard_v2" ? 1 : 0

  name                = "appgw-${var.appgw_name}-pip"
  location            = var.appgw_rg_location
  resource_group_name = var.appgw_rg_name
  allocation_method   = "Static"   //var.sku.tier == "Standard" ? "Dynamic" : "Static"
  sku                 = "Standard" //var.sku.tier == "Standard" ? "Basic" : "Standard"
  //domain_name_label   = var.domain_name_label
  //tags                = merge({ "ResourceName" = lower("${var.app_gateway_name}-${local.location}-gw-pip") }, var.tags, )
}

# since these variables are re-used - a locals block makes this more maintainable
locals {
  # backend_address_pool_name      = "${var.appgw_name}-beap"
  # frontend_port_name             = "${var.appgw_name}-feport"
  # frontend_ip_configuration_name = "${var.appgw_name}-feip"
  # http_setting_name              = "${var.appgw_name}-be-htst"
  # listener_name                  = "${var.appgw_name}-httplstn"
  # request_routing_rule_name      = "${var.appgw_name}-rqrt"
  # redirect_configuration_name    = "${var.appgw_name}-rdrcfg"

  frontend_port_name             = "appgw-${var.appgw_name}-feport"
  frontend_ip_configuration_name = "appgw-${var.appgw_name}-feip"
  gateway_ip_configuration_name  = "appgw-${var.appgw_name}-gwipc"
}

resource "azurerm_application_gateway" "appgw" {
  name                = lower("appgw-${var.appgw_name}")
  resource_group_name = var.appgw_rg_name
  location            = var.appgw_rg_location
  enable_http2        = var.appgw_http2
  tags                = var.tags

  sku {
    name     = var.appgw_sku_name
    tier     = var.appgw_sku_tier
    capacity = var.appgw_sku_capacity != null ? var.appgw_sku_capacity : null
  }

  dynamic "autoscale_configuration" {
    for_each = var.appgw_sku_capacity == null ? [1] : []
    content {
      min_capacity = var.appgw_sku_capacity == null ? var.appgw_scale_min : null
      max_capacity = var.appgw_sku_capacity == null ? var.appgw_scale_max : null
    }
  }

  dynamic "waf_configuration" {
    for_each = var.waf_configuration != null ? [var.waf_configuration] : []
    content {
      enabled                  = waf_configuration.value.enabled
      firewall_mode            = lookup(waf_configuration.value, "firewall_mode", "Detection")
      rule_set_type            = "OWASP"
      rule_set_version         = lookup(waf_configuration.value, "rule_set_version", "3.2")
      file_upload_limit_mb     = lookup(waf_configuration.value, "file_upload_limit_mb", 100)
      request_body_check       = lookup(waf_configuration.value, "request_body_check", true)
      max_request_body_size_kb = lookup(waf_configuration.value, "max_request_body_size_kb", 128)

      dynamic "disabled_rule_group" {
        for_each = waf_configuration.value.disabled_rule_group
        content {
          rule_group_name = disabled_rule_group.value.rule_group_name
          rules           = disabled_rule_group.value.rules
        }
      }

      dynamic "exclusion" {
        for_each = waf_configuration.value.exclusion
        content {
          match_variable          = exclusion.value.match_variable
          selector_match_operator = exclusion.value.selector_match_operator
          selector                = exclusion.value.selector
        }
      }
    }
  }

  gateway_ip_configuration {
    name      = local.gateway_ip_configuration_name //"my-gateway-ip-configuration"
    subnet_id = var.appgw_gw_subnet_id
  }

  frontend_ip_configuration {
    name                          = local.frontend_ip_configuration_name
    public_ip_address_id          = var.appgw_sku_tier == "WAF_v2" ? azurerm_public_ip.public_ip[0].id : null || var.appgw_sku_tier == "Standard_v2" ? azurerm_public_ip.public_ip[0].id : null
    private_ip_address            = var.private_ip_address != null ? var.private_ip_address : null
    private_ip_address_allocation = var.private_ip_address != null ? "Static" : "Dynamic"
    subnet_id                     = var.appgw_sku_tier == "Standard_v2" ? null : var.appgw_gw_subnet_id || var.appgw_sku_tier == "WAF_v2" ? null : var.appgw_gw_subnet_id
  }

  frontend_port {
    name = "${local.frontend_port_name}-80"
    port = 80
  }

  frontend_port {
    name = "${local.frontend_port_name}-443"
    port = 443
  }

  dynamic "backend_address_pool" {
    for_each = var.appgw_backend_pools
    content {
      name         = backend_address_pool.value.name
      fqdns        = backend_address_pool.value.fqdns
      ip_addresses = backend_address_pool.value.ip_addresses
    }
  }

  dynamic "backend_http_settings" {
    for_each = var.backend_http_settings
    content {
      name                                = backend_http_settings.value.name
      cookie_based_affinity               = lookup(backend_http_settings.value, "cookie_based_affinity", "Disabled")
      affinity_cookie_name                = lookup(backend_http_settings.value, "affinity_cookie_name", null)
      path                                = lookup(backend_http_settings.value, "path", "/")
      port                                = backend_http_settings.value.enable_https ? 443 : 80
      probe_name                          = lookup(backend_http_settings.value, "probe_name", null)
      protocol                            = backend_http_settings.value.enable_https ? "Https" : "Http"
      request_timeout                     = lookup(backend_http_settings.value, "request_timeout", 30)
      host_name                           = backend_http_settings.value.pick_host_name_from_backend_address == false ? lookup(backend_http_settings.value, "host_name") : null
      pick_host_name_from_backend_address = lookup(backend_http_settings.value, "pick_host_name_from_backend_address", false)

      dynamic "authentication_certificate" {
        for_each = backend_http_settings.value.authentication_certificate[*]
        content {
          name = authentication_certificate.value.name
        }
      }

      trusted_root_certificate_names = lookup(backend_http_settings.value, "trusted_root_certificate_names", null)

      dynamic "connection_draining" {
        for_each = backend_http_settings.value.connection_draining[*]
        content {
          enabled           = connection_draining.value.enable_connection_draining
          drain_timeout_sec = connection_draining.value.drain_timeout_sec
        }
      }
    }
  }

  dynamic "http_listener" {
    for_each = var.http_listeners
    content {
      name                           = http_listener.value.name
      frontend_ip_configuration_name = local.frontend_ip_configuration_name
      frontend_port_name             = http_listener.value.ssl_certificate_name == null ? "${local.frontend_port_name}-80" : "${local.frontend_port_name}-443"
      host_name                      = lookup(http_listener.value, "host_name", null)
      host_names                     = lookup(http_listener.value, "host_names", null)
      protocol                       = http_listener.value.ssl_certificate_name == null ? "Http" : "Https"
      require_sni                    = http_listener.value.ssl_certificate_name != null ? http_listener.value.require_sni : null
      ssl_certificate_name           = http_listener.value.ssl_certificate_name
      firewall_policy_id             = http_listener.value.firewall_policy_id
      ssl_profile_name               = http_listener.value.ssl_profile_name

      dynamic "custom_error_configuration" {
        for_each = http_listener.value.custom_error_configuration != null ? lookup(http_listener.value, "custom_error_configuration", {}) : []
        content {
          custom_error_page_url = lookup(custom_error_configuration.value, "custom_error_page_url", null)
          status_code           = lookup(custom_error_configuration.value, "status_code", null)
        }
      }
    }
  }

  dynamic "request_routing_rule" {
    for_each = var.request_routing_rules
    content {
      name                        = request_routing_rule.value.name
      priority                    = request_routing_rule.value.priority
      rule_type                   = lookup(request_routing_rule.value, "rule_type", "Basic")
      http_listener_name          = request_routing_rule.value.http_listener_name
      backend_address_pool_name   = request_routing_rule.value.redirect_configuration_name == null ? request_routing_rule.value.backend_address_pool_name : null
      backend_http_settings_name  = request_routing_rule.value.redirect_configuration_name == null ? request_routing_rule.value.backend_http_settings_name : null
      redirect_configuration_name = lookup(request_routing_rule.value, "redirect_configuration_name", null)
      rewrite_rule_set_name       = lookup(request_routing_rule.value, "rewrite_rule_set_name", null)
      url_path_map_name           = lookup(request_routing_rule.value, "url_path_map_name", null)
    }
  }

  dynamic "identity" {
    for_each = var.identity_ids != null ? [1] : []
    content {
      type         = "UserAssigned"
      identity_ids = var.identity_ids
    }
  }

  dynamic "ssl_certificate" {
    for_each = var.ssl_certificates
    content {
      name                = ssl_certificate.value.name
      data                = ssl_certificate.value.key_vault_secret_id == null ? filebase64(ssl_certificate.value.data) : null
      password            = ssl_certificate.value.key_vault_secret_id == null ? ssl_certificate.value.password : null
      key_vault_secret_id = lookup(ssl_certificate.value, "key_vault_secret_id", null)
    }
  }

}
