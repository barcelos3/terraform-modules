resource "aws_ssm_parameter" "ssm_input" {
  name        = var.ssm_name
  description = var.ssm_description
  data_type   = var.ssm_data_type
  type        = var.ssm_type
  tier        = var.ssm_tier
  value       = var.ssm_value

  tags = var.tags
}

data "aws_ssm_parameter" "ssm_consumer" {
  count = var.ssm_consumer == true ? 1 : 0

  name = var.ssm_datasource
}
