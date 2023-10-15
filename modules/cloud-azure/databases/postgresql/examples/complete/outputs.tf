output "postgresql_server_name" {
  value       = module.azurerm_postgresql_server.postgresql_server_name
  description = "Postgresql server name"
}

output "postgresql_server_resource_group_name" {
  value       = module.azurerm_postgresql_server.postgresql_server_resource_group_name
  description = "Postgresql server resource group name"
}

output "postgresql_server_id" {
  value       = module.azurerm_postgresql_server.postgresql_server_id
  description = "Postgresql server id"
}

output "postgresql_server_sku" {
  value       = module.azurerm_postgresql_server.postgresql_server_sku
  description = "Postgresql server sku"
}