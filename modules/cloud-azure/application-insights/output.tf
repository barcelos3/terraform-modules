output "application_insights_name" {
  value       = azurerm_application_insights.create_application_insights.name
  description = "Application insights name"
}

output "application_insights_connection_string" {
  value       = azurerm_application_insights.create_application_insights.connection_string
  description = "Application connection string"
}

output "instrumentation_key" {
  value = azurerm_application_insights.create_application_insights.instrumentation_key
  description = "Application instrumentation key"
}

output "app_id" {
  value = azurerm_application_insights.create_application_insights.app_id
  description = "Application app_id"
}