<!-- BEGIN_TF_DOCS -->

## Requirements

Reference a data source or module sbus.

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
| [azurerm_servicebus_queue.create_queue](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_queue)          | resource    |
| [azurerm_servicebus_namespace.data_usage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/servicebus_namespace) | data source |

## Inputs

| Name                                                                                                | Description                                                                                     | Type     | Default   | Required |
| --------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | -------- | --------- | :------: |
| <a name="input_data_sbus_name"></a> [data_sbus_name](#input_data_sbus_name)                         | data source service bus name                                                                    | `string` | `null`    |    no    |
| <a name="input_data_sbus_rg"></a> [data_sbus_rg](#input_data_sbus_rg)                               | data source service bus resource group                                                          | `string` | `null`    |    no    |
| <a name="input_enable_data_sbus"></a> [enable_data_sbus](#input_enable_data_sbus)                   | enable data source sbus                                                                         | `bool`   | `false`   |    no    |
| <a name="input_queue_max_delivery"></a> [queue_max_delivery](#input_queue_max_delivery)             | Integer value which controls when a message is automatically dead lettered                      | `number` | `10`      |    no    |
| <a name="input_queue_max_message_size"></a> [queue_max_message_size](#input_queue_max_message_size) | Integer value which controls the maximum size of a message allowed on the queue for Premium SKU | `number` | `null`    |    no    |
| <a name="input_queue_max_size"></a> [queue_max_size](#input_queue_max_size)                         | Integer value which controls the size of memory allocated for the queue. In megabytes           | `number` | `1024`    |    no    |
| <a name="input_queue_name"></a> [queue_name](#input_queue_name)                                     | queue name                                                                                      | `string` | n/a       |   yes    |
| <a name="input_queue_nsid"></a> [queue_nsid](#input_queue_nsid)                                     | queue correlation namespace id                                                                  | `string` | `null`    |    no    |
| <a name="input_queue_sufix"></a> [queue_sufix](#input_queue_sufix)                                  | sufix name queue                                                                                | `string` | `"queue"` |    no    |
| <a name="input_enable_partitioning"></a> [enable_partitioning](#input_enable_partitioning)                                  | controls whether to enable the queue to be partitioned across multiple message brokers   | `bool` | `true` |    no    |
## Outputs

| Name                                                                                      | Description                  |
| ----------------------------------------------------------------------------------------- | ---------------------------- |
| <a name="output_queue_id"></a> [queue_id](#output_queue_id)                               | id queue                     |
| <a name="output_queue_name"></a> [queue_name](#output_queue_name)                         | name queue                   |
| <a name="output_queue_namespace_id"></a> [queue_namespace_id](#output_queue_namespace_id) | queue associate namespace id |

<!-- END_TF_DOCS -->
