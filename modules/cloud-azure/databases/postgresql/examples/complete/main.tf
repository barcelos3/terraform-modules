module "resource_group" {
  source = "../../../../resource-group"

  rg_name     = var.rg_name
  rg_location = var.rg_location

  tags = {
    terraform = true
  }
}

module "azurerm_postgresql_server" {
  source = "../../"

  postgresql_server_name        = var.postgresql_server_name
  postgresql_server_rg_location = module.resource_group.resource_group_location
  postgresql_server_rg_name     = module.resource_group.resource_group_name
  administrator_login           = var.administrator_login
  administrator_login_password  = var.administrator_login_password
  postgresql_server_sku_name    = var.postgresql_server_sku_name

  tags = var.tags
}