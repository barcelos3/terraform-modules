module "cognitive-openai" {
  source = "git::git@ssh.dev.azure.com:v3/kdop/SRE/modules-terraform//modules/cloud-azure/cognitive-openai"

  cognitive_name        = var.cognitive_name
  cognitive_rg_location = "eastus"
  cognitive_rg_name     = "rg-test-devops"
  cognitive_access      = true
  kind                  = "OpenAI"

  sku_name = "S0"

  tags = {
    terraform = true
  }
}

