
resource "azurerm_log_analytics_workspace" "create_log_analytics" {
  count = var.log_analytics == true ? 1 : 0

  name                = var.app_log_name
  location            = var.app_location
  resource_group_name = var.resource_group_name
  sku                 = var.sku_log_analytics
  retention_in_days   = 30

  tags = var.tags
    lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

resource "azurerm_container_app_environment" "create_environment" {
  count = var.create_environment == true ? 1 : 0

  name                       = var.app_environment_name
  location                   = var.app_location
  resource_group_name        = var.resource_group_name
  log_analytics_workspace_id = var.log_analytics == true ? azurerm_log_analytics_workspace.create_log_analytics[count.index].id : null
  infrastructure_subnet_id   = var.infrastructure_subnet_id

  tags = var.tags
  
}

resource "azurerm_container_app" "create_container_apps" {

  name                         = var.app_name
  container_app_environment_id = var.create_environment == true ? azurerm_container_app_environment.create_environment[0].id : data.azurerm_container_app_environment.environment[0].id
  resource_group_name          = var.resource_group_name
  revision_mode                = var.revision_mode

  template {
    container {
      name   = var.app_name
      image  = var.app_container_image
      cpu    = var.app_container_cpu
      memory = var.app_container_memory
    }
  }
  ingress {
    external_enabled           = true
    target_port                = 80
    traffic_weight {
      latest_revision = true
      percentage      = 100
    }
  }
      tags = var.tags

}

data "azurerm_container_app_environment" "environment" {
  count = var.create_environment == true ? 0 : 1
  name = var.app_environment_name
  resource_group_name = var.resource_group_name

}