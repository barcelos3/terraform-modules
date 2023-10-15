<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                                     | Version   |
| ------------------------------------------------------------------------ | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.4.4  |
| <a name="requirement_azurerm"></a> [azurerm](#requirement_azurerm)       | >= 3.58.0 |

## Providers

| Name                                                         | Version   |
| ------------------------------------------------------------ | --------- |
| <a name="provider_azurerm"></a> [azurerm](#provider_azurerm) | >= 3.58.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                                                    | Type     |
| ------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [azurerm_application_insights](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/application_insights) | resource |

## Inputs

| Name                                                                     | Description                | Type       | Default   | Required |
| ------------------------------------------------------------------------ | -------------------------- | ---------- | --------- | :------: |
| <a name="input_application_insights_name"></a> [application_insights_name](#input_application_insights_name)    | application insights name                | `string`   | n/a    |    yes    |
| <a name="input_application_insights_rg_name"></a> [application_insights_rg_name](#input_application_insights_rg_name) | application insights rg name              | `string`   | n/a      |   yes    |
| <a name="input_application_insights_rg_location"></a> [application_insights_rg_location](#input_application_insights_rg_location) | application insights resource group location              | `string`   | n/a      |   yes    |
| <a name="input_application_type"></a> [application_type](#input_application_type)  | application type | `string`   | n/a       |   yes    |
| <a name="input_tags"></a> [tags](#input_tags)                            | Tags values                | `map(any)` | n/a       |   yes    |

## Outputs

| Name                                                                       | Description          |
| -------------------------------------------------------------------------- | -------------------- |
| <a name="output_application_insights_name"></a> [application_insights_name](#output_application_insights_name) | application insights name |
| <a name="output_application_insights_connection_string"></a> [application_insights_connection_string](#output_application_insights_connection_string)                   | application insights connection string       |
| <a name="output_instrumentation_key"></a> [instrumentation_key](#output_instrumentation_key)             | instrumentation key     |
| <a name="output_app_id"></a> [app_id](#output_app_id)                | app id      |

<!-- END_TF_DOCS -->
