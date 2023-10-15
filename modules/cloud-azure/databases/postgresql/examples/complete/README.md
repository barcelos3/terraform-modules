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

| Name                                                                                                                                                  | Version   |
| ----------------------------------------------------------------------------------------------------------------------------------------------------- | --------- |
| <a name="module_resource_group"></a> [resource group](https://dev.azure.com/kdop/SRE/_git/modules-terraform?path=/modules/cloud-azure/resource-group) | >= 3.53.0 |
| <a name="module_subnet"></a> [postgresql flexible server](https://dev.azure.com/kdop/SRE/_git/modules-terraform?path=/modules/cloud-azure/databases/postgresql)                 | >= 3.53.0 |


## Resources

| Name                                                                                                                                                    | Type     |
| ------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [azurerm_postgresql_flexible_server](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server) | resource |

## Inputs

| Name                                                                     | Description                | Type       | Default   | Required |
| ------------------------------------------------------------------------ | -------------------------- | ---------- | --------- | :------: |
| <a name="input_postgresql_server_name"></a> [postgresql_server_name](#input_postgresql_server_name)             | postgresql server name           | `string`   | n/a       |   yes    |
| <a name="input_postgresql_server_rg"></a> [postgresql_server_rg](#input_postgresql_server_rg)                   | postgresql server resource group | `string`   | n/a       |   yes    |
| <a name="input_postgresql_server_rg_location"></a> [postgresql_server_rg_location](#input_postgresql_server_rg_location)                   | postgresql server resource group region | `string`   | n/a       |   yes    |
| <a name="input_postgresql_server_sku"></a> [postgresql_server_sku](#input_postgresql_server_sku)             | postgresql server sku           | `string`   | n/a |    yes    |
| <a name="input_tags"></a> [tags](#input_tags)                            | Tags values                | `map(any)` | n/a       |   yes    |
| <a name="input_administrator_login"></a> [administrator_login](#input_administrator_login)             | postgresql server administrator login           | `string`   | n/a |    yes    |
| <a name="input_administrator_login_password"></a> [administrator_login_password](#input_administrator_login_password)             | postgresql server administrator login password        | `string`   | n/a |    yes    |

## Outputs

| Name                                                                       | Description          |
| -------------------------------------------------------------------------- | -------------------- |
| <a name="output_postgresql_server_name"></a> [postgresql_server_name](#output_postgresql_server_name) | postgresql server name |
| <a name="output_postgresql_server_id"></a> [sbus_id](#output_postgresql_server_id)                   | postgresql server id       |
| <a name="output_postgresql_server_resource_group"></a> [postgresql_server_resource_group](#output_postgresql_server_resource_group)             | service bus name     |
| <a name="output_postgresql_server_sku"></a> [postgresql_server_sku](#output_postgresql_server_sku)                | postgresql server sku     |

<!-- END_TF_DOCS -->
