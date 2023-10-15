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

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cognitive_name"></a> [cognitive\_name](#input\_cognitive\_name) | cognitive services name | `string` | `"teste-devops"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cognitive_openai_id"></a> [cognitive\_openai\_id](#output\_cognitive\_openai\_id) | cognitive account openai id |
| <a name="output_cognitive_openai_name"></a> [cognitive\_openai\_name](#output\_cognitive\_openai\_name) | cognitive account openai name |
| <a name="output_cognitive_openai_sku"></a> [cognitive\_openai\_sku](#output\_cognitive\_openai\_sku) | cognitive account openai endpoint |
<!-- END_TF_DOCS -->