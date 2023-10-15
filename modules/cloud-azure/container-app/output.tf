output "azurerm_container_app" {
  value       = azurerm_container_app.create_container_apps
  description = "App name"
  sensitive   = true
}
output "azurerm_container_app_environment" {
  value       = azurerm_container_app_environment.create_environment
  description = "Create Enviroment"
}
output "azurerm_log_analytics_workspace" {
  value       = azurerm_log_analytics_workspace.create_log_analytics
  description = "log analytics"
}
