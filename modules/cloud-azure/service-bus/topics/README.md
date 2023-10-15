# Azure Topics Terraform Modules

Terraform module which create topics resources on Azure.

![cogna](https://img.shields.io/badge/cogna-terraform-blueviolet) ![terraform](https://img.shields.io/badge/module-servicebus.topics-blue)

## Usage

```hcl
module "topics" {
  source = "../service-bus/topics"

  enable_data_sbus = false

  topic_name         = var.mytopics
  topic_max_delivery = 2
  topic_nsid = var.topic_nsid
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

| Name                                                                                                                                               | Type        |
| -------------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [azurerm_servicebus_topic.create_topic](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_topic)          | resource    |
| [azurerm_servicebus_namespace.data_usage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/servicebus_namespace) | data source |

## Inputs

| Name                                                                              | Description                            | Type     | Default   | Required |
| --------------------------------------------------------------------------------- | -------------------------------------- | -------- | --------- | :------: |
| <a name="input_data_sbus_name"></a> [data_sbus_name](#input_data_sbus_name)       | data source service bus name           | `string` | `null`    |    no    |
| <a name="input_data_sbus_rg"></a> [data_sbus_rg](#input_data_sbus_rg)             | data source service bus resource group | `string` | `null`    |    no    |
| <a name="input_enable_data_sbus"></a> [enable_data_sbus](#input_enable_data_sbus) | enable data source sbus                | `bool`   | `false`   |    no    |
| <a name="input_topic_name"></a> [topic_name](#input_topic_name)                   | topic name                             | `string` | n/a       |   yes    |
| <a name="input_topic_nsid"></a> [topic_nsid](#input_topic_nsid)                   | topic correlation namespace id         | `string` | n/a       |   yes    |
| <a name="input_topic_sufix"></a> [topic_sufix](#input_topic_sufix)                | sufix name topic                       | `string` | `"topic"` |    no    |

## Outputs

| Name                                                                                      | Description                  |
| ----------------------------------------------------------------------------------------- | ---------------------------- |
| <a name="output_topic_id"></a> [topic_id](#output_topic_id)                               | id topic                     |
| <a name="output_topic_name"></a> [topic_name](#output_topic_name)                         | name topic                   |
| <a name="output_topic_namespace_id"></a> [topic_namespace_id](#output_topic_namespace_id) | topic associate namespace id |

<!-- END_TF_DOCS -->
