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
| <a name="module_topics"></a> [topics](#module_topics) | ../service-bus/topics | n/a     |

## Resources

| Name                                                                                                                                            | Type        |
| ----------------------------------------------------------------------------------------------------------------------------------------------- | ----------- |
| [azurerm_servicebus_namespace.example](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/servicebus_namespace) | data source |

## Inputs

| Name                                                      | Description     | Type           | Default                                                    | Required |
| --------------------------------------------------------- | --------------- | -------------- | ---------------------------------------------------------- | :------: |
| <a name="input_mytopics"></a> [mytopics](#input_mytopics) | my topics tests | `list(string)` | <pre>[<br> "topic1",<br> "topic2",<br> "topic3"<br>]</pre> |    no    |

## Outputs

| Name                                                              | Description |
| ----------------------------------------------------------------- | ----------- |
| <a name="output_topic_id"></a> [topic_id](#output_topic_id)       | topic id    |
| <a name="output_topic_name"></a> [topic_name](#output_topic_name) | topic name  |

<!-- END_TF_DOCS -->
