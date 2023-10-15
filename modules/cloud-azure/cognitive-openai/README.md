# Azure Cognitive Service Opemai Terraform Modules

Terraform module which creates Congitive Services OpenAi, resources on Azure.

![cogna](https://img.shields.io/badge/cogna-terraform-blueviolet) ![terraform](https://img.shields.io/badge/module-cognitiveService-blue) ![terraform](https://img.shields.io/badge/module-openai-yellow)


<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.4 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.58.0 |

## Modules

No modules.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.58.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cognitive_access"></a> [cognitive\_access](#input\_cognitive\_access) | (Optional) Whether public network access is allowed for the Cognitive Account. Defaults to true | `bool` | `true` | no |
| <a name="input_cognitive_name"></a> [cognitive\_name](#input\_cognitive\_name) | cognitive services name | `string` | n/a | yes |
| <a name="input_cognitive_rg_location"></a> [cognitive\_rg\_location](#input\_cognitive\_rg\_location) | cognitive services region | `string` | n/a | yes |
| <a name="input_cognitive_rg_name"></a> [cognitive\_rg\_name](#input\_cognitive\_rg\_name) | cognitive services resource group | `string` | n/a | yes |
| <a name="input_cognitive_sku"></a> [cognitive\_sku](#input\_cognitive\_sku) | cognitive services tier | `string` | `"S0"` | no |
| <a name="input_custom_subdomain_name"></a> [custom\_subdomain\_name](#input\_custom\_subdomain\_name) | (Optional) The subdomain name used for token-based authentication. Changing this forces a new resource to be created. | `string` | `null` | no |
| <a name="input_deploy_cognitive_account_id"></a> [deploy\_cognitive\_account\_id](#input\_deploy\_cognitive\_account\_id) | cognitive services account id | `string` | `null` | no |
| <a name="input_deploy_model_format"></a> [deploy\_model\_format](#input\_deploy\_model\_format) | cognitive services deployment model format | `string` | `"OpenAI"` | no |
| <a name="input_deploy_model_name"></a> [deploy\_model\_name](#input\_deploy\_model\_name) | cognitive services deployment model name | `string` | `null` | no |
| <a name="input_deploy_model_version"></a> [deploy\_model\_version](#input\_deploy\_model\_version) | cognitive services deployment model format | `string` | `null` | no |
| <a name="input_deploy_name"></a> [deploy\_name](#input\_deploy\_name) | cognitive services deployment name | `string` | `null` | no |
| <a name="input_deploy_scale_tier"></a> [deploy\_scale\_tier](#input\_deploy\_scale\_tier) | cognitive services deployment scale tier | `string` | `"free"` | no |
| <a name="input_deploy_scale_type"></a> [deploy\_scale\_type](#input\_deploy\_scale\_type) | cognitive services deployment scale type | `string` | `"Standard"` | no |
| <a name="input_deployment_mode"></a> [deployment\_mode](#input\_deployment\_mode) | enabled cognitive services deployment mode | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags values | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cognitive_deployment_id"></a> [cognitive\_deployment\_id](#output\_cognitive\_deployment\_id) | cognitive account deployment mode id |
| <a name="output_cognitive_deployment_name"></a> [cognitive\_deployment\_name](#output\_cognitive\_deployment\_name) | cognitive account deployment mode name |
| <a name="output_cognitive_openai_endpoint"></a> [cognitive\_openai\_endpoint](#output\_cognitive\_openai\_endpoint) | cognitive account openai endpoint |
| <a name="output_cognitive_openai_id"></a> [cognitive\_openai\_id](#output\_cognitive\_openai\_id) | cognitive account openai id |
| <a name="output_cognitive_openai_name"></a> [cognitive\_openai\_name](#output\_cognitive\_openai\_name) | cognitive account openai name |
| <a name="output_cognitive_openai_sku"></a> [cognitive\_openai\_sku](#output\_cognitive\_openai\_sku) | cognitive account openai sku |

## Resources

| Name | Type |
|------|------|
| [azurerm_cognitive_account.cognitive_openai](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cognitive_account) | resource |
| [azurerm_cognitive_deployment.deployment_mode](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/cognitive_deployment) | resource |

## Usage
```hcl
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

```


<!-- END_TF_DOCS -->
