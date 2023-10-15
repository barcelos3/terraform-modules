# Azure Postgresql Flexible Server Terraform Modules

Terraform module which creates Postgresql Flexible Server resources on Azure.

![cogna](https://img.shields.io/badge/cogna-terraform-blueviolet) ![terraform](https://img.shields.io/badge/module-postgresqlFlexibleServer-blue) ![terraform](https://img.shields.io/badge/module-topics-green)

## Usage

```hcl
module "postgresql_flexible_server" {
  source = "../postgresql/"

  postgresql_server_name        = "postgresql-server-teste"
  postgresql_server_rg_location = module.resource_group_teste.resource_group_location
  postgresql_server_rg_name     = module.resource_group_teste.resource_group_name
  administrator_login           = "userteste"
  administrator_login_password  = "senhakrotonteste3456#@"

  tags = {
    terraform = true
  }
}

```

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
| [azurerm_postgresql_flexible_server](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/postgresql_flexible_server) | resource |

## Inputs

| Name                                                                     | Description                | Type       | Default   | Required |
| ------------------------------------------------------------------------ | -------------------------- | ---------- | --------- | :------: |
| <a name="input_prefix"></a> [prefix](#input_prefix)                      | prefix name                | `string`   | `"pg"`  |    no    |
| <a name="input_postgresql_server_location"></a> [postgresql_server_location](#input_postgresql_server_location) | postgresql server region         | `string`   | n/a       |   yes    |
| <a name="input_postgresql_server_name"></a> [postgresql_server_name](#input_postgresql_server_name)             | postgresql server name           | `string`   | n/a       |   yes    |
| <a name="input_postgresql_server_rg"></a> [postgresql_server_rg](#input_postgresql_server_rg)                   | postgresql server resource group | `string`   | n/a       |   yes    |
| <a name="input_postgresql_server_sku"></a> [postgresql_server_sku](#input_postgresql_server_sku)             | postgresql server sku           | `string`   | n/a |    yes    |
| <a name="input_tags"></a> [tags](#input_tags)                            | Tags values                | `map(any)` | n/a       |   yes    |
| <a name="input_administrator_login"></a> [administrator_login](#input_administrator_login)             | postgresql server administrator login           | `string`   | n/a |    yes    |
| <a name="input_administrator_login_password"></a> [administrator_login_password](#input_administrator_login_password)             | postgresql server administrator login password        | `string`   | n/a |    yes    |
| <a name="input_postgresql_server_version"></a> [postgresql_server_version](#input_postgresql_server_version)             | postgresql server version        | `string`   | n/a |    yes    |
| <a name="input_postgresql_server_storage_mb"></a> [postgresql_server_storage_mb](#input_postgresql_server_storage_mb)             | postgresql server versstorage mbion        | `string`   | n/a |    yes    |
| <a name="input_backup_retention_days"></a> [backup_retention_days](#input_backup_retention_days)             | postgresql server backup retention days       | `string`   | n/a |    yes    |
| <a name="input_geo_redundant_backup_enabled"></a> [geo_redundant_backup_enabled](#input_geo_redundant_backup_enabled)             | postgresql server geo redundant backup enabled      | `string`   | n/a |    yes    |
| <a name="input_zone"></a> [zone](#input_zone)             | postgresql server zone      | `string`   | n/a |    no    |
| <a name="input_delegated_subnet_id"></a> [delegated_subnet_id](#input_delegated_subnet_id)             | postgresql server delegated subnet id      | `string`   | n/a |    no    |
| <a name="input_private_dns_zone_id"></a> [private_dns_zone_id](#input_private_dns_zone_id)             | postgresql server private dns zone id      | `string`   | n/a |    no    |

## Outputs

| Name                                                                       | Description          |
| -------------------------------------------------------------------------- | -------------------- |
| <a name="output_postgresql_server_name"></a> [postgresql_server_name](#output_postgresql_server_name) | postgresql server name |
| <a name="output_postgresql_server_id"></a> [sbus_id](#output_postgresql_server_id)                   | postgresql server id       |
| <a name="output_postgresql_server_resource_group"></a> [postgresql_server_resource_group](#output_postgresql_server_resource_group)             | service bus name     |
| <a name="output_postgresql_server_sku"></a> [postgresql_server_sku](#output_postgresql_server_sku)                | postgresql server sku     |

<!-- END_TF_DOCS -->
