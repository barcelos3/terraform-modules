module "my_container_app" {
  source = "../modules/container_app"

  app_name             = "mycontainerapp"
  app_log_name         = "My-log"
  app_location         = "East US"
  sku_log_analytics    = "PerGB2018"
  app_environment_name = "teste"
  revision_mode        = "Single"
  app_container_name   = "nome-do-seu-container"
  app_container_image  = "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest"
  app_container_cpu    = "0.25"
  app_container_memory = "0.5Gi"
  log_analytics        = true
  resource_group_name  = data.azurerm_resource_group.resource_group.name
}

data "azurerm_resource_group" "resource_group" {
  name = var.resource_group_name
}