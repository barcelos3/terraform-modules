output "ssm_name" {
  value       = aws_ssm_parameter.ssm_input.name
  description = "ssm parameter name"
}

output "ssm_version" {
  value       = aws_ssm_parameter.ssm_input.version
  description = "ssm parameter verion"
}

output "ssm_key_id" {
  value = aws_ssm_parameter.ssm_input.key_id
  description = "ssm parameter key id"
}