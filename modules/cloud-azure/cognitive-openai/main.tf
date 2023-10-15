resource "azurerm_cognitive_account" "cognitive_openai" {
  name                          = lower("openai-${var.cognitive_name}")
  custom_subdomain_name         = var.custom_subdomain_name
  location                      = var.cognitive_rg_location
  resource_group_name           = var.cognitive_rg_name
  public_network_access_enabled = var.cognitive_access
  kind                          = "OpenAI"

  sku_name = var.cognitive_sku

  tags = var.tags
}

resource "azurerm_cognitive_deployment" "deployment_mode" {
  count = var.deployment_mode == true ? 1 : 0

  name                 = lower("deploy-${var.deploy_name}")
  cognitive_account_id = var.deploy_cognitive_account_id
  model {
    format  = var.deploy_model_format
    name    = var.deploy_model_name
    version = var.deploy_model_version
  }

  scale {
    type = var.deploy_scale_type
    tier = var.deploy_scale_tier
  }
}
