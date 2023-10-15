resource "azurerm_postgresql_flexible_server" "create_postgresql_flexible_server" {
  name                         = lower("${var.postgresql_prefix}-${var.postgresql_server_name}")
  resource_group_name          = var.postgresql_server_rg_name
  location                     = var.postgresql_server_rg_location
  version                      = var.postgresql_server_version
  delegated_subnet_id          = var.delegated_subnet_id
  private_dns_zone_id          = var.private_dns_zone_id
  administrator_login          = var.administrator_login
  administrator_password       = var.administrator_login_password
  zone                         = var.zone
  backup_retention_days        = var.backup_retention_days
  geo_redundant_backup_enabled = var.geo_redundant_backup_enabled

  storage_mb = var.postgresql_server_storage_mb

  sku_name   = var.postgresql_server_sku_name

  tags = var.tags
}