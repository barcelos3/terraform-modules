## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.4 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.53.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_random"></a> [random](#provider\_random) | 3.5.1 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_resource_group"></a> [resource\_group](#module\_resource\_group) | git::git@ssh.dev.azure.com:v3/kdop/SRE/modules-terraform//modules/cloud-azure/resource-group | n/a |
| <a name="module_subnet"></a> [subnet](#module\_subnet) | git::git@ssh.dev.azure.com:v3/kdop/SRE/modules-terraform//modules/cloud-azure/network/subnet | n/a |
| <a name="module_vm_public"></a> [vm\_public](#module\_vm\_public) | ../../ | n/a |
| <a name="module_vnet"></a> [vnet](#module\_vnet) | git::git@ssh.dev.azure.com:v3/kdop/SRE/modules-terraform//modules/cloud-azure/network/vnet | n/a |

## Resources

| Name | Type |
|------|------|
| [random_password.create_password](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | n/a | `string` | `"teste"` | no |
| <a name="input_rg_location"></a> [rg\_location](#input\_rg\_location) | n/a | `string` | `"eastus"` | no |
| <a name="input_vm_user"></a> [vm\_user](#input\_vm\_user) | n/a | `string` | `"teste"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | Resource group created |
| <a name="output_subnet_name"></a> [subnet\_name](#output\_subnet\_name) | Subnet name |
| <a name="output_vm_name"></a> [vm\_name](#output\_vm\_name) | Virtual Machine name |
| <a name="output_vnet_name"></a> [vnet\_name](#output\_vnet\_name) | Vnet name |
