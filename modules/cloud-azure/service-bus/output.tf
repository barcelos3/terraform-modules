output "sbus_id" {
  value       = azurerm_servicebus_namespace.create_service_bus.id
  description = "service bus id"
}

output "sbus_name" {
  value       = azurerm_servicebus_namespace.create_service_bus.name
  description = "service bus name"
}

output "sbus_endpoint" {
  value       = azurerm_servicebus_namespace.create_service_bus.endpoint
  description = "service bus endpoint"
}

output "sbus_sku" {
  value       = azurerm_servicebus_namespace.create_service_bus.sku
  description = "service bus sku"
}

