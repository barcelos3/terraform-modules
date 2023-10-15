# Azure Subnet Terraform Modules

Terraform module which creates *SUBNET* resources on Azure.

![cogna](https://img.shields.io/badge/cogna-terraform-blueviolet) ![terraform](https://img.shields.io/badge/module-subnet-blue)

## Usage

```hcl
module "subnet" {
  source = "git::git@ssh.dev.azure.com:v3/kdop/Diego%20Comitre/modules-terraform//modules/cloud-azure/network/subnet"

  subnet_name        = "subnet-test-module"
  subnet_rg_name     = module.resource_group.resource_group_name
  subnet_rg_location = module.resource_group.resource_group_location
  subnet_intg_vnet   = module.vnet.vnet_name  
}
```

## Examples

- [Complete Subnet]()
- [Simple]()

## Requirements

|**Name**|**Version**|
|--------|-----------|
|terraform|>= 1.4.4|
|azure|>= 3.53.0|

## Providers

|**Name**|**Version**|
|--------|-----------|
|azure|>= 3.53.0|

## Modules

Na modules.

## Resources

|**Name**|**Type**|
|--------|-----------|
|azurerm_subnet|`resource`|

## Inputs

|**Name**|**Description**|**Type**|**Required**|
|--------|---------------|--------|------------|
|subnet_name|The name of the subnet. Changing this forces a new resource to be created.|`string`|yes|
|subnet_rg_name| The name of the resource group in which to create the subnet. Changing this forces a new resource to be created.|`string`|yes|
|subnet_adress|The address prefixes to use for the subnet.|`list`|no|
|subnet_intg_vnet|The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created.|`string`|yes|


## Outputs

|**Name**|**Description**|
|--------|---------------|
|subnet_id|The subnet ID.|
|subnet_name|The name of the subnet. Changing this forces a new resource to be created.|
|subnet_address_prefixes|The address prefixes for the subnet|


## Authors
Module is maintained by [Cogna](https://www.cogna.com.br/) with help from team SRE.

## License
Apache 2 Licensed. See LICENSE for full details.