output "appgw_id" {
  value       = azurerm_application_gateway.appgw.id
  description = "Application gateway ID"
}

output "appgw_name" {
  value       = azurerm_application_gateway.appgw.name
  description = "Application gateway name"
}

output "appgw_region" {
  value       = azurerm_application_gateway.appgw.location
  description = "Application gateway region"
}

output "appgw_http2_status" {
  value       = azurerm_application_gateway.appgw.enable_http2
  description = "Application gateway httpd2 status"
}

output "appgw_sku" {
  value       = azurerm_application_gateway.appgw.sku
  description = "Application gateway sku"
}
