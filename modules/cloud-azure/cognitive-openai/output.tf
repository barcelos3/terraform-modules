output "cognitive_openai_id" {
  value       = azurerm_cognitive_account.cognitive_openai.id
  description = "cognitive account openai id"
}

output "cognitive_openai_name" {
  value       = azurerm_cognitive_account.cognitive_openai.name
  description = "cognitive account openai name"
}

output "cognitive_openai_sku" {
  value       = azurerm_cognitive_account.cognitive_openai.sku_name
  description = "cognitive account openai sku"
}

output "cognitive_openai_endpoint" {
  value       = azurerm_cognitive_account.cognitive_openai.endpoint
  description = "cognitive account openai endpoint"
}

output "cognitive_deployment_id" {
  value       = var.deployment_mode == true ? azurerm_cognitive_deployment.deployment_mode[0].id : null
  description = "cognitive account deployment mode id"
}

output "cognitive_deployment_name" {
  value       = var.deployment_mode == true ? azurerm_cognitive_deployment.deployment_mode[0].name : null
  description = "cognitive account deployment mode name"

}
