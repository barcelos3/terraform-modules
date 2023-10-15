module "cognitive-openai" {
  source = "git::git@ssh.dev.azure.com:v3/kdop/SRE/modules-terraform//modules/cloud-azure/cognitive-openai"

  cognitive_name        = var.openai_name
  cognitive_rg_location = var.openai_rg_location
  cognitive_rg_name     = var.openai_rg_name
  custom_subdomain_name = var.custom_subdomain_name
  cognitive_access      = true
  kind                  = "OpenAI"

  sku_name = var.openai_sku

  tags = {
    terraform = true
  }
}

module "deployment" {
  deployment_mode = true

  deploy_name                 = var.deploy_name
  deploy_cognitive_account_id = module.cognitive-openai.id
  model {
    deploy_model_format  = var.deploy_model_format
    deploy_model_name    = var.deploy_model_name
    deploy_model_version = var.deploy_model_version
  }

  scale {
    deploy_scale_type = var.deploy_scale_type
    deploy_scale_tier = var.deploy_scale_tier
  }
}
