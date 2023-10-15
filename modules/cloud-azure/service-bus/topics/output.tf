output "topic_id" {
  value       = azurerm_servicebus_topic.create_topic.id
  description = "id topic"
}

output "topic_name" {
  value       = azurerm_servicebus_topic.create_topic.name
  description = "name topic"
}

output "topic_namespace_id" {
  value       = azurerm_servicebus_topic.create_topic.namespace_id
  description = "topic associate namespace id"
}
