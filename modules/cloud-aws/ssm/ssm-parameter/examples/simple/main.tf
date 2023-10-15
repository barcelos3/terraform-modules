module "ssm_created" {
  source = "git::git@ssh.dev.azure.com:v3/kdop/SRE/modules-terraform/modules-terraform//modules/cloud-aws/ssm/ssm-parameter"


  ssm_name        = "test-ssm-simple"
  ssm_value       = "LAÇKSDlkkmlaksdj1239018"

  tags = {
    terraform : true
    
  }
}

