# Azure Subnet Terraform Modules

Terraform module which creates SUBNET resources on Azure.

-adicionar badge

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

## Requirements

|**Name**|**Version**|
|--------|-----------|
|terraform| >= 1.4.3 |
|azure| >=3.53.0|

## Providers

|**Name**|**Version**|
|--------|-----------|
|azure| >=3.53.0|

## Modules

Na modules.

## Resources

|**Name**|**Type**|
|--------|-----------|

## Inputs

|**Name**|**Description**|**Type**|**Required**|
|--------|---------------|--------|------------|


## Outputs

|**Name**|**Description**|
|--------|---------------|


## Authors
Module is maintained by [Cogna](https://www.cogna.com.br/) with help from team SRE.

## License
Apache 2 Licensed. See LICENSE for full details.