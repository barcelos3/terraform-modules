<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.4 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.58.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_cognitive-openai"></a> [cognitive-openai](#module\_cognitive-openai) | git::git@ssh.dev.azure.com:v3/kdop/SRE/modules-terraform//modules/cloud-azure/cognitive-openai | n/a |
| <a name="module_deployment"></a> [deployment](#module\_deployment) |  | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_deploy_model_format"></a> [deploy\_model\_format](#input\_deploy\_model\_format) | openai services deployment model format | `string` | `"OpenAI"` | no |
| <a name="input_deploy_model_name"></a> [deploy\_model\_name](#input\_deploy\_model\_name) | openai services deployment model name | `string` | `null` | no |
| <a name="input_deploy_model_version"></a> [deploy\_model\_version](#input\_deploy\_model\_version) | openai services deployment model format | `string` | `null` | no |
| <a name="input_deploy_name"></a> [deploy\_name](#input\_deploy\_name) | openai services deployment name | `string` | `null` | no |
| <a name="input_deploy_openai_account_id"></a> [deploy\_openai\_account\_id](#input\_deploy\_openai\_account\_id) | openai services account id | `string` | `null` | no |
| <a name="input_deploy_scale_tier"></a> [deploy\_scale\_tier](#input\_deploy\_scale\_tier) | openai services deployment scale tier | `string` | `"free"` | no |
| <a name="input_deploy_scale_type"></a> [deploy\_scale\_type](#input\_deploy\_scale\_type) | openai services deployment scale type | `string` | `"Standard"` | no |
| <a name="input_deployment_mode"></a> [deployment\_mode](#input\_deployment\_mode) | enabled openai services deployment mode | `bool` | `false` | no |
| <a name="input_openai_access"></a> [openai\_access](#input\_openai\_access) | (Optional) Whether public network access is allowed for the openai Account. Defaults to true | `bool` | `true` | no |
| <a name="input_openai_name"></a> [openai\_name](#input\_openai\_name) | openai services name | `string` | n/a | yes |
| <a name="input_openai_rg_location"></a> [openai\_rg\_location](#input\_openai\_rg\_location) | openai services region | `string` | n/a | yes |
| <a name="input_openai_rg_name"></a> [openai\_rg\_name](#input\_openai\_rg\_name) | openai services resource group | `string` | n/a | yes |
| <a name="input_openai_sku"></a> [openai\_sku](#input\_openai\_sku) | openai services tier | `string` | `"S0"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags values | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cognitive_openai_id"></a> [cognitive\_openai\_id](#output\_cognitive\_openai\_id) | cognitive account openai id |
| <a name="output_cognitive_openai_name"></a> [cognitive\_openai\_name](#output\_cognitive\_openai\_name) | cognitive account openai name |
| <a name="output_cognitive_openai_sku"></a> [cognitive\_openai\_sku](#output\_cognitive\_openai\_sku) | cognitive account openai endpoint |
<!-- END_TF_DOCS -->
