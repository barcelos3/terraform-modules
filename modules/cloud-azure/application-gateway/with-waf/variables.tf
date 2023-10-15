variable "private_ip_address" {
  description = "(Optional) The Private IP Address to use for the Application Gateway."
  type        = string
  default     = null
}

# variable "enabled_public_ip" {
#   description = "enabled public ip"
#   type        = bool

# }

variable "puplic_ip_id" {
  description = "(Optional) The ID of a Public IP Address which the Application Gateway should use. The allocation method for the Public IP Address depends on the sku of this Application Gateway."
  type        = string
  default     = null
}

# variable "enabled_identity_id" {
#   description = "(Optional) An identity block as defined below. For TLS termination with Key Vault certificates to work properly existing user-assigned managed identity, which Application Gateway uses to retrieve certificates from Key Vault, should be defined via identity block. Additionally, access policies in the Key Vault to allow the identity to be granted get access to the secret should be defined."
#   type        = bool
#   default     = true
# }

variable "tags" {
  description = "(Required) Tags of Resource"
  type        = map(any)

}

variable "appgw_name" {
  description = "Application Gateway Name."
  type        = string
}

variable "appgw_rg_name" {
  description = "Application Gateway Resource Group Name."
  type        = string
}

variable "appgw_rg_location" {
  description = "Application Gateway Resource Group Location."
  type        = string

}

variable "appgw_http2" {
  description = "(Optional) Is HTTP2 enabled on the application gateway resource? Defaults to false."
  type        = bool
  default     = true
}

variable "appgw_sku_name" {
  description = "(Required) The Name of the SKU to use for this Application Gateway. Possible values are Standard_Small, Standard_Medium, Standard_Large, Standard_v2, WAF_Medium, WAF_Large, and WAF_v2."
  type        = string
  //default     = "Standard_v2"
}

variable "appgw_sku_tier" {
  description = "(Required) The Tier of the SKU to use for this Application Gateway. Possible values are Standard, Standard_v2, WAF and WAF_v2."
  type        = string
  //default     = "Standard_v2"
}

variable "appgw_sku_capacity" {
  description = "(Optional) The Capacity of the SKU to use for this Application Gateway. When using a V1 SKU this value must be between 1 and 32, and 1 to 125 for a V2 SKU. This property is optional if autoscale_configuration is set"
  type        = string
  default     = null
}

variable "appgw_scale_min" {
  description = "(Required) Minimum capacity for autoscaling. Accepted values are in the range 0 to 100."
  type        = number
  default     = 1
}

variable "appgw_scale_max" {
  description = "(Optional) Maximum capacity for autoscaling. Accepted values are in the range 2 to 125."
  type        = number
  default     = 2
}

variable "appgw_gw_name" {
  description = "(Required) The Name of this Gateway IP Configuration."
  type        = string
}

variable "appgw_gw_subnet_id" {
  description = "(Required) The ID of the Subnet which the Application Gateway should be connected to."
  type        = string
}

variable "identity_ids" {
  description = " (Required) Specifies a list of User Assigned Managed Identity IDs to be assigned to this Application Gateway."
  type        = list(any)
  default     = null
}

variable "waf_configuration" {
  description = "Web Application Firewall support for your Azure Application Gateway"
  type = object({
    enabled                  = bool
    firewall_mode            = string
    rule_set_version         = string
    file_upload_limit_mb     = optional(number)
    request_body_check       = optional(bool)
    max_request_body_size_kb = optional(number)
    disabled_rule_group = optional(list(object({
      rule_group_name = string
      rules           = optional(list(string))
    })))
    exclusion = optional(list(object({
      match_variable          = string
      selector_match_operator = optional(string)
      selector                = optional(string)
    })))
  })
  default = null
}

variable "appgw_backend_pools" {
  description = "List of backend address pools"
  type = list(object({
    name         = string
    fqdns        = optional(list(string))
    ip_addresses = optional(list(string))
  }))
}

variable "http_listeners" {
  description = "List of HTTP/HTTPS listeners. SSL Certificate name is required"
  type = list(object({
    name                 = string
    host_name            = optional(string)
    host_names           = optional(list(string))
    require_sni          = optional(bool)
    ssl_certificate_name = optional(string)
    firewall_policy_id   = optional(string)
    ssl_profile_name     = optional(string)
    custom_error_configuration = optional(list(object({
      status_code           = string
      custom_error_page_url = string
    })))
  }))
}

variable "request_routing_rules" {
  description = "List of Request routing rules to be used for listeners."
  type = list(object({
    name                        = string
    priority                    = optional(number)
    rule_type                   = string
    http_listener_name          = string
    backend_address_pool_name   = optional(string)
    backend_http_settings_name  = optional(string)
    redirect_configuration_name = optional(string)
    rewrite_rule_set_name       = optional(string)
    url_path_map_name           = optional(string)
  }))
  default = []
}

variable "backend_http_settings" {
  description = "List of backend HTTP settings."
  type = list(object({
    name                                = string
    cookie_based_affinity               = string
    affinity_cookie_name                = optional(string)
    path                                = optional(string)
    enable_https                        = bool
    probe_name                          = optional(string)
    request_timeout                     = number
    host_name                           = optional(string)
    pick_host_name_from_backend_address = optional(bool)
    authentication_certificate = optional(object({
      name = string
    }))
    trusted_root_certificate_names = optional(list(string))
    connection_draining = optional(object({
      enable_connection_draining = bool
      drain_timeout_sec          = number
    }))
  }))
}

variable "ssl_certificates" {
  description = "List of SSL certificates data for Application gateway"
  type = list(object({
    name                = string
    data                = optional(string)
    password            = optional(string)
    key_vault_secret_id = optional(string)
  }))
  default = []
}


