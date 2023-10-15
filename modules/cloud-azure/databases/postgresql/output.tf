output "postgresql_server_name" {
  value       = azurerm_postgresql_flexible_server.create_postgresql_flexible_server.name
  description = "Postgresql server name"
}

output "postgresql_server_resource_group_name" {
  value       = azurerm_postgresql_flexible_server.create_postgresql_flexible_server.resource_group_name
  description = "Postgresql server resource group name"
}

output "postgresql_server_id" {
  value       = azurerm_postgresql_flexible_server.create_postgresql_flexible_server.id
  description = "Postgresql server id"
}

output "postgresql_server_sku" {
  value       = azurerm_postgresql_flexible_server.create_postgresql_flexible_server.sku_name
  description = "Postgresql server sku"
}

output "administrator_login" {
  value       = azurerm_postgresql_flexible_server.create_postgresql_flexible_server.administrator_login
  description = "Postgresql server administrator login"
}