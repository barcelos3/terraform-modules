output "ssm_name" {
  value       = module.ssm_created.ssm_name
  description = "ssm parameter name"
}

output "ssm_version" {
  value       = module.ssm_created.ssm_version
  description = "ssm parameter verion"
}
