# Azure SSM Parameter Terraform Modules

Terraform module which creates _SSM PARAMETER_ resources on AWS.

![cogna](https://img.shields.io/badge/cogna-terraform-blueviolet) ![terraform](https://img.shields.io/badge/module-ssm-orange)

---

## Usage

```hcl
module "ssm_parameter" {
  source = "git::git@ssh.dev.azure.com:v3/kdop/SRE/modules-terraform/modules-terraform//modules/cloud-aws/ssm/ssm-parameter"

  ssm_name        = "test-ssm"
  ssm_description = "test"
  ssm_data_type   = "text"
  ssm_value       = "asdjASDfjsliasa23"
}
```

## Examples

- [Complete SSM-Parameter](https://dev.azure.com/kdop/SRE/_git/modules-terraform?path=/modules/cloud-aws/ssm/ssm-parameter/examples/complete)
- [Simple](https://dev.azure.com/kdop/SRE/_git/modules-terraform?path=/modules/cloud-aws/ssm/ssm-parameter/examples/simple)

<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                                     | Version  |
| ------------------------------------------------------------------------ | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.4.4 |
| <a name="requirement_aws"></a> [aws](#requirement_aws)                   | 4.65.0   |

## Providers

| Name                                             | Version |
| ------------------------------------------------ | ------- |
| <a name="provider_aws"></a> [aws](#provider_aws) | 4.65.0  |

## Modules

No modules.

## Resources

| Name                                                                                                                           | Type        |
| ------------------------------------------------------------------------------------------------------------------------------ | ----------- |
| [aws_ssm_parameter.ssm_input](https://registry.terraform.io/providers/hashicorp/aws/4.65.0/docs/resources/ssm_parameter)       | resource    |
| [aws_ssm_parameter.ssm_consumer](https://registry.terraform.io/providers/hashicorp/aws/4.65.0/docs/data-sources/ssm_parameter) | data source |

## Inputs

| Name                                                                           | Description                | Type       | Default            | Required |
| ------------------------------------------------------------------------------ | -------------------------- | ---------- | ------------------ | :------: |
| <a name="input_ssm_consumer"></a> [ssm_consumer](#input_ssm_consumer)          | enabled consumer parameter | `bool`     | `false`            |    no    |
| <a name="input_ssm_data_type"></a> [ssm_data_type](#input_ssm_data_type)       | inpnut ssm data type       | `string`   | `"text"`           |    no    |
| <a name="input_ssm_datasource"></a> [ssm_datasource](#input_ssm_datasource)    | input parameter name exist | `string`   | `null`             |    no    |
| <a name="input_ssm_description"></a> [ssm_description](#input_ssm_description) | inpnut ssm description     | `string`   | `"access token"`   |    no    |
| <a name="input_ssm_name"></a> [ssm_name](#input_ssm_name)                      | inpnut ssm name            | `string`   | n/a                |   yes    |
| <a name="input_ssm_tier"></a> [ssm_tier](#input_ssm_tier)                      | inpnut ssm tier            | `string`   | `"Standard"`       |    no    |
| <a name="input_ssm_type"></a> [ssm_type](#input_ssm_type)                      | inpnut ssm type            | `string`   | `"SecurityString"` |    no    |
| <a name="input_ssm_value"></a> [ssm_value](#input_ssm_value)                   | inpnut ssm value           | `string`   | n/a                |   yes    |
| <a name="input_tags"></a> [tags](#input_tags)                                  | tags values                | `map(any)` | n/a                |   yes    |

## Outputs

| Name                                                                 | Description          |
| -------------------------------------------------------------------- | -------------------- |
| <a name="output_ssm_name"></a> [ssm_name](#output_ssm_name)          | ssm parameter name   |
| <a name="output_ssm_version"></a> [ssm_version](#output_ssm_version) | ssm parameter verion |

<!-- END_TF_DOCS -->
