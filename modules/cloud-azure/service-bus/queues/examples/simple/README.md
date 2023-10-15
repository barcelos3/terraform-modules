<!-- BEGIN_TF_DOCS -->

## Requirements

Reference a data source or module sbus.

## Providers

| Name                                                         | Version |
| ------------------------------------------------------------ | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider_azurerm) | n/a     |

## Modules

| Name                                                  | Source                | Version |
| ----------------------------------------------------- | --------------------- | ------- |
| <a name="module_queues"></a> [queues](#module_queues) | ../service-bus/queues | n/a     |

## Resources

| Name                                                                                                                                            | Type        |
| ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [azurerm_servicebus_namespace.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/servicebus_namespace) | data source |

## Inputs

| Name                                                      | Description     | Type           | Default                                                    | Required |
| --------------------------------------------------------- | --------------- | -------------- | ---------------------------------------------------------- | :------: |
| <a name="input_myqueues"></a> [myqueues](#input_myqueues) | my queues tests | `list(string)` | <pre>[<br> "queue1",<br> "queue2",<br> "queue3"<br>]</pre> |    no    |

## Outputs

| Name                                                              | Description |
| ----------------------------------------------------------------- | ----------- |
| <a name="output_queue_id"></a> [queue_id](#output_queue_id)       | queue id    |
| <a name="output_queue_name"></a> [queue_name](#output_queue_name) | queue name  |

<!-- END_TF_DOCS -->
