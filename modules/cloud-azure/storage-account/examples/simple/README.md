
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
| [azurerm_azurerm_storage_account](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) | resource |

## Inputs

| Name                                                                     | Description                | Type       | Default   | Required |
| ------------------------------------------------------------------------ | -------------------------- | ---------- | --------- | :------: |
| <a name="input_storage_account_name"></a> [storage_account_name](#input_storage_account_name)    | storage account name                | `string`   | n/a`    |    yes    |
| <a name="input_storage_account_rg_name"></a> [storage_account_rg_name](#input_storage_account_rg_name) | storage account resource group name              | `string`   | n/a      |   yes    |
| <a name="input_storage_account_rg_location"></a> [storage_account_rg_location](#input_storage_account_rg_location) | storage account resource group location  | `string`   | n/a       |   yes    |
| <a name="input_storage_account_tier"></a> [storage_account_tier](#input_storage_account_tier)  | storage account tier | `string`   | "Standard"       |   no    |
| <a name="input_storage_account_replication_type"></a> [storage_account_replication_type](#input_storage_account_replication_type)                   | storage account replication type | `string`   | "LRS"       |   no    |
| <a name="input_tags"></a> [tags](#input_tags)                            | Tags values                | `map(any)` | n/a       |   yes    |


## Outputs

| Name                                                                       | Description          |
| -------------------------------------------------------------------------- | -------------------- |
| <a name="output_storage_account_name"></a> [storage_account_name](#output_storage_account_name) | storage account name |
| <a name="output_storage_account_primary_access_key"></a> [storage_account_primary_access_key](#output_storage_account_primary_access_key)                   | storage account primary access key      |
| <a name="output_storage_account_tier"></a> [storage_account_tier](#output_storage_account_tier)             | storage account tier     |

<!-- END_TF_DOCS -->
