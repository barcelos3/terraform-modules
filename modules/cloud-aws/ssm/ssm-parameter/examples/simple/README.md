<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.4 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | 4.65.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.65.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ssm_parameter.ssm_input](https://registry.terraform.io/providers/hashicorp/aws/4.65.0/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.ssm_consumer](https://registry.terraform.io/providers/hashicorp/aws/4.65.0/docs/data-sources/ssm_parameter) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ssm_consumer"></a> [ssm\_consumer](#input\_ssm\_consumer) | enabled consumer parameter | `bool` | `false` | no |
| <a name="input_ssm_data_type"></a> [ssm\_data\_type](#input\_ssm\_data\_type) | inpnut ssm data type | `string` | `"text"` | no |
| <a name="input_ssm_datasource"></a> [ssm\_datasource](#input\_ssm\_datasource) | input parameter name exist | `string` | `null` | no |
| <a name="input_ssm_description"></a> [ssm\_description](#input\_ssm\_description) | inpnut ssm description | `string` | `"access token"` | no |
| <a name="input_ssm_name"></a> [ssm\_name](#input\_ssm\_name) | inpnut ssm name | `string` | n/a | yes |
| <a name="input_ssm_tier"></a> [ssm\_tier](#input\_ssm\_tier) | inpnut ssm tier | `string` | `"Standard"` | no |
| <a name="input_ssm_type"></a> [ssm\_type](#input\_ssm\_type) | inpnut ssm type | `string` | `"SecurityString"` | no |
| <a name="input_ssm_value"></a> [ssm\_value](#input\_ssm\_value) | inpnut ssm value | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | tags values | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ssm_name"></a> [ssm\_name](#output\_ssm\_name) | ssm parameter name |
| <a name="output_ssm_version"></a> [ssm\_version](#output\_ssm\_version) | ssm parameter verion |
<!-- END_TF_DOCS -->