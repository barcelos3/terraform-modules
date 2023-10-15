output "application_insights_name" {
  value       = module.application_insights.application_insights_name
  description = "application insights name"
}

output "application_insights_connection_string" {
  value       = module.application_insights.application_insights_connection_string
  description = "application insights connection string"
}

output "app_id" {
  value       = module.application_insights.app_id
  description = "application insights app id"
}