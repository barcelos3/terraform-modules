# Terraform Module - Documentation

<img src="http://img.shields.io/static/v1?label=MODULES&message=TERRAFORM%20CONTAINER%20APPS&color=GREEN&style=for-the-badge"/>

## Overview

This Terraform module is responsible for creating resources related to a container application in Azure. It creates an Azure Log Analytics workspace, a container application environment, and a container application.

## usage

```hcl
Ex:

module "my_container_app" {
  source = "../modules/container_app"

  app_name             = "myapp"
  app_log_name         = "My-log"
  app_location         = "East US"
  sku_log_analytics    = "PerGB2018"
  app_environment_name = "teste"
  revision_mode        = "Single"
  app_container_name   = "nome-do-seu-container"
  app_container_image  = "mcr.microsoft.com/azuredocs/containerapps-helloworld:latest"
  app_container_cpu    = "0.25"
  app_container_memory = "0.5Gi"
  log_analytics        = true
  resource_group_name  = data.azurerm_resource_group.resource_group.name
}
```
## Examples

- [Code example](https://dev.azure.com/kdop/Team%20Atlas/_git/consumer-container-app?path=/consumer/README.md&_a=preview)


## Requirements

| Name                                                                     | Version   |
| ------------------------------------------------------------------------ | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.2.7  |
| <a name="requirement_azurerm"></a> [azurerm](#requirement_azurerm)       | >= 3.53.0 |
## Providers

| Name                                                         | Version   |
| ------------------------------------------------------------ | --------- |
| <a name="provider_azurerm"></a> [azurerm](#provider_azurerm) | >= 3.53.0 |

## Modules

No modules.

## Resources

| Name                                                                                                                                              |   Type   |
| --------------------------------------------------------------------------------------------------------------------------------------------------| -------- |
| [azurerm_container_app](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/container_app)                         | resource |
| [azurerm_log_analytics_workspace](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/log_analytics_workspace)        | resource |
| [azurerm_container_app_environment](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/container_app_environment) | resource |



## Inputs
| Name                                                                                                     | Description                                                                                | Type        | Default  | Required  |
| ------------------------------------------------------------------------------------------------------| --------------------------------------------------------------------------------------------------------------------------------   | ----------- | --------------------   | :------: |
| <a name="app_location"></a> [app_location](#input_App_location)                                         | The location of the application in Azure                                                    | `string`     | West US  |   yes    |
| <a name="app_environment_name:"></a> [app_environment_name)](#input_app_environment_name)               | The name of the application environment                                                     | `string`     |   n/a    |   yes    |
| <a name="app_name:"></a> [app_name](#app_name)                                                          | The name of the container application                                                       | `string`     |   n/a    |   yes    |
| <a name="app_container_name"></a> [app_container_name](#input_app_container_name)                       | The name of the application container.                                                      | `string`     |   n/a    |   yes    |
| <a name="app_container_image"></a> [app_container_image](#input_app_container_image)                    | The container image.                                                                        | `string`     |   n/a    |   yes    |
| <a name="app_container_cpu"></a> [app_container_cpu](#input_app_container_cpu)                          | The number of vCPUs to allocate for the container. Default: 0.25.                           | `number`     | `0.25`   |   no     |
| <a name="app_container_memory"></a> [app_container_memory](#input_*app_container_memory)             | The amount of memory to allocate for the container.                                            | `string`     |  n/a     |   yes    |
| <a name="app_log_name"></a> [app_log_name](#input_app_log_name)                                         |  The name of the Azure Log Analytics workspace.                                             | `string`     |  n/a     |   yes    |
| <a name="sku_log_analytics"></a> [sku_log_analytics](#sku_log_analytics)                                | The Log Analytics SKU type.                                                                 |  `string`    |  n/a     |   yes    | 
| <a name="revision_mode"></a> [revision_mode](#input_revision_mode)                                      | The revision mode of the container application. Default: "Single".                          |  `string`    | `single` |    no    |
| <a name="resource_group_name"></a> [resource_group_name](#input_resource_group_name)                    | The name of the resource group where the resources will be created.                         |  `string`    |  n/a     |    yes   |
| <a name="log_analytics"></a> [log_analytics](#input_log_analytics)                                      | Enable or disable the use of Log Analytics. Default: false.                                 |   `bool`     | `false`  |    no    |


## Outputs

| Name                                                        | Description |
| ----------------------------------------------------------- | ----------- |
| <a name="azurerm_container_app"></a> [azurerm_container_app](#output_vm_id) | The created container application resource. |
| <a name="azurerm_container_app_environment:"></a> [azurerm_container_app_environment:](#output_app_environment) | The created container application environment resource.    |
| <a name="azurerm_log_analytics_workspace"></a> [log_analytics](#output_log_analytics)    | The created Log Analytics workspace resource.|


## Authors

Module is maintained by [Cogna](https://www.cogna.com.br/) with help from team SRE.