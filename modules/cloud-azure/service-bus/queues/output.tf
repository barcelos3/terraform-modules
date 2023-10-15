output "queue_id" {
  value       = azurerm_servicebus_queue.create_queue.id
  description = "id queue"
}

output "queue_name" {
  value       = azurerm_servicebus_queue.create_queue.name
  description = "name queue"
}

output "queue_namespace_id" {
  value       = azurerm_servicebus_queue.create_queue.namespace_id
  description = "queue associate namespace id"
}



