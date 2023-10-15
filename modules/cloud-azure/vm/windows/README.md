# Azure Virtual Machine Terraform Modules

Terraform module which creates VM resources on Azure.

![cogna](https://img.shields.io/badge/cogna-terraform-blueviolet) ![terraform](https://img.shields.io/badge/module-virtualMachine-blue)

## Usage

```hcl

resource "random_password" "create_password" {
  length           = 24
  special          = true
  override_special = "!#$"
}

module "resource_group" {
  source = "git::git@ssh.dev.azure.com:v3/kdop/SRE/modules-terraform//modules/cloud-azure/resource-group"

  rg_name     = var.project_name
  rg_location = var.rg_location

  tags = local.tags_values
}

module "vnet" {
  source = "git::git@ssh.dev.azure.com:v3/kdop/SRE/modules-terraform//modules/cloud-azure/network/vnet"

  vnet_name        = var.project_name
  vnet_rg_location = module.resource_group.resource_group_location
  vnet_rg_name     = module.resource_group.resource_group_name


  tags = local.tags_values
}

module "subnet" {
  source = "git::git@ssh.dev.azure.com:v3/kdop/SRE/modules-terraform//modules/cloud-azure/network/subnet"

  subnet_name        = var.project_name
  subnet_rg_name     = module.resource_group.resource_group_name
  subnet_rg_location = module.resource_group.resource_group_location
  subnet_intg_vnet   = module.vnet.vnet_name

}

module "vm_public" {
  source = "../../"

  vm_private = false

  vm_name        = var.project_name
  vm_rg_name     = module.resource_group.resource_group_name
  vm_rg_location = module.resource_group.resource_group_location
  vm_user        = var.vm_user
  vm_pass        = random_password.create_password.result
  rules_nsg      = local.rules
  vm_disk_size   = 127

  subnet_id = module.subnet.subnet_id

  tags = local.tags_values
}

```

## Examples

- [Code example](hhttps://dev.azure.com/kdop/SRE/_git/modules-terraform?path=/modules/cloud-azure/vm/windows/examples/simple)

<!-- BEGIN_TF_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.4 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.53.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.53.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_network_interface.create_interface](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface) | resource |
| [azurerm_network_interface_security_group_association.associate_nsg_nic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface_security_group_association) | resource |
| [azurerm_network_security_group.create_nsg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_public_ip.create_public_ip](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip) | resource |
| [azurerm_windows_virtual_machine.create_vm](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/windows_virtual_machine) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_caching"></a> [caching](#input\_caching) | OS storage disk caching | `string` | `"ReadWrite"` | no |
| <a name="input_computer_name"></a> [computer\_name](#input\_computer\_name) | Specifies the Hostname which should be used for this Virtual Machine.If unspecified this defaults to the value for the name field. | `string` | `null` | no |
| <a name="input_custom_data"></a> [custom\_data](#input\_custom\_data) | Start script custom data | `string` | `null` | no |
| <a name="input_offer"></a> [offer](#input\_offer) | os image offer | `string` | `"WindowsServer"` | no |
| <a name="input_os_image_version"></a> [os\_image\_version](#input\_os\_image\_version) | os image version | `string` | `"latest"` | no |
| <a name="input_publisher"></a> [publisher](#input\_publisher) | os image publisher | `string` | `"MicrosoftWindowsServer"` | no |
| <a name="input_rules_nsg"></a> [rules\_nsg](#input\_rules\_nsg) | Apply rules networks | `list(any)` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | os image sku | `string` | `"2019-Datacenter"` | no |
| <a name="input_storage_account_type"></a> [storage\_account\_type](#input\_storage\_account\_type) | OS storage disk type | `string` | `"Standard_LRS"` | no |
| <a name="input_subnet_id"></a> [subnet\_id](#input\_subnet\_id) | Subnet id correlation | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags values | `map(any)` | n/a | yes |
| <a name="input_vm_disk_size"></a> [vm\_disk\_size](#input\_vm\_disk\_size) | The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine is sourced from. | `number` | `127` | no |
| <a name="input_vm_name"></a> [vm\_name](#input\_vm\_name) | Add vm name | `string` | n/a | yes |
| <a name="input_vm_pass"></a> [vm\_pass](#input\_vm\_pass) | Password access vm | `string` | n/a | yes |
| <a name="input_vm_private"></a> [vm\_private](#input\_vm\_private) | Set private network private if true | `bool` | n/a | yes |
| <a name="input_vm_rg_location"></a> [vm\_rg\_location](#input\_vm\_rg\_location) | Resource group location | `string` | n/a | yes |
| <a name="input_vm_rg_name"></a> [vm\_rg\_name](#input\_vm\_rg\_name) | Resource group name | `string` | n/a | yes |
| <a name="input_vm_tier"></a> [vm\_tier](#input\_vm\_tier) | Tier vm family | `string` | `"Standard_D8ds_v4"` | no |
| <a name="input_vm_user"></a> [vm\_user](#input\_vm\_user) | User access vm | `string` | `"adminuser"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_id"></a> [vm\_id](#output\_vm\_id) | Vm ID |
| <a name="output_vm_image"></a> [vm\_image](#output\_vm\_image) | Vm image |
| <a name="output_vm_name"></a> [vm\_name](#output\_vm\_name) | Vm name |

<!-- END_TF_DOCS -->

## Authors

Module is maintained by [Cogna](https://www.cogna.com.br/) with help from team SRE.

## License

Apache 2 Licensed.
