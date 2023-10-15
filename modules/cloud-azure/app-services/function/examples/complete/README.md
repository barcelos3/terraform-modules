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
| [azurerm_linux_function_app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/linux_function_app) | resource |
| [azurerm_windows_function_app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_function_app) | resource |

## Inputs

| Name                                                                     | Description                | Type       | Default   | Required |
| ------------------------------------------------------------------------ | -------------------------- | ---------- | --------- | :------: |
| <a name="input_function_prefix"></a> [prefix](#input_function_prefix)    | prefix name                | `string`   | `"fn"`    |    no    |
| <a name="input_function_name"></a> [function_name](#input_function_name) | function name              | `string`   | n/a      |   yes    |
| <a name="input_function_rg_name"></a> [function_rg_name](#input_function_rg_name) | function_rg_name  | `string`   | n/a       |   yes    |
| <a name="input_function_rg_location"></a> [function_rg_location](#input_function_rg_location)  | function resource group location | `string`   | n/a       |   yes    |
| <a name="input_storage_account_name"></a> [storage_account_name](#input_storage_account_name)                   | storage account name | `string`   | n/a       |   yes    |
| <a name="input_storage_account_primary_access_key"></a> [sbus_storage_account_primary_access_key](#input_storage_account_primary_access_key)             | storage account primary access key         | `string`   | n/a |    yes    |
| <a name="input_service_plan_id"></a> [service_plan_id](#input_service_plan_id)                            | service plan id                | `string`  | n/a       |   yes    |
| <a name="input_app_settings"></a> [app_settings)](#input_app_settings)                            | app_settings                | `map(string)` | null       |   no    |
| <a name="input_app_mode"></a> [app_mode](#input_app_mode)                            | app mode                | `string` | n/a       |   yes    |
| <a name="input_application_insights_connection_string"></a> [application_insights_connection_string](#input_application_insights_connection_string)                            | application insights connection string                | `string` | null       |   no    |
| <a name="input_application_insights_key"></a> [application_insights_key](#input_application_insights_key)                            | application insights key                | `string` | null       |   no    |
| <a name="input_always_on"></a> [tags](#input_always_on)                            | always on                | `bool` | false       |   no    |
| <a name="input_scm_minimum_tls_version"></a> [scm_minimum_tls_version](#input_scm_minimum_tls_version)                            | scm minimum tls version                | `string` | `1.2`      |   yes    |
| <a name="input_use_32_bit_worker"></a> [use_32_bit_worker](#input_use_32_bit_worker)                            | use 32 bit worker                | `bool` | false       |   no    |
| <a name="input_dotnet_version"></a> [dotnet_version](#input_dotnet_version)                            | dotnet version               | `string` | null       |   no    |
| <a name="input_use_dotnet_isolated_runtime"></a> [use_dotnet_isolated_runtime](#input_use_dotnet_isolated_runtime)                            | use dotnet isolated runtime                | `bool` | false      |   no    |
| <a name="input_java_version"></a> [java_version](#input_java_version)                            | java_version                | `string` | null       |   no    |
| <a name="input_powershell_core_version"></a> [powershell_core_version](#input_powershell_core_version)                            | powershell core version                | `string` | null       |   no    |
| <a name="input_use_custom_runtime"></a> [tags](#input_use_custom_runtime)                            | use custom runtime                | `string` | null      |   no    |


## Outputs

| Name                                                                       | Description          |
| -------------------------------------------------------------------------- | -------------------- |
| <a name="output_sbus_endpoint"></a> [sbus_endpoint](#output_sbus_endpoint) | service bus endpoint |
| <a name="output_sbus_id"></a> [sbus_id](#output_sbus_id)                   | service bus id       |
| <a name="output_sbus_name"></a> [sbus_name](#output_sbus_name)             | service bus name     |
| <a name="output_sbus_sku"></a> [sbus_sku](#output_sbus_sku)                | service bus sku      |

<!-- END_TF_DOCS -->
