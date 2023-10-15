provider "aws" {
  # Configuration options
}

module "ssm_created" {
  source = "git::git@ssh.dev.azure.com:v3/kdop/SRE/modules-terraform/modules-terraform//modules/cloud-aws/ssm/ssm-parameter"


  ssm_name        = var.name
  ssm_description = var.description
  ssm_data_type   = var.data_type
  ssm_type        = var.type
  ssm_tier        = var.tier
  ssm_value       = var.value

  tags = var.tags
}
