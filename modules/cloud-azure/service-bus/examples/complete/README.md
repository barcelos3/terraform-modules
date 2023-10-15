<!-- BEGIN_TF_DOCS -->

## Requirements

| Name                                                                     | Version   |
| ------------------------------------------------------------------------ | --------- |
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | >= 1.4.4  |
| <a name="requirement_azurerm"></a> [azurerm](#requirement_azurerm)       | >= 3.58.0 |

## Providers

<a name="requirement_azurerm"></a> [azurerm](#requirement_azurerm) >= 3.58.0

## Modules

| Name                                                  | Source                | Version |
| ----------------------------------------------------- | --------------------- | ------- |
| <a name="module_queues"></a> [queues](#module_queues) | ../service-bus/queues | n/a     |
| <a name="module_sbus"></a> [sbus](#module_sbus)       | ../service-bus/       | n/a     |
| <a name="module_topics"></a> [topics](#module_topics) | ../service-bus/topics | n/a     |

## Resources

No resources.

## Inputs

| Name                                                      | Description     | Type           | Default                                                    | Required |
| --------------------------------------------------------- | --------------- | -------------- | ---------------------------------------------------------- | :------: |
| <a name="input_myqueues"></a> [myqueues](#input_myqueues) | my queues tests | `list(string)` | <pre>[<br> "queue1",<br> "queue2",<br> "queue3"<br>]</pre> |    no    |

## Outputs

| Name                                                              | Description      |
| ----------------------------------------------------------------- | ---------------- |
| <a name="output_queue_id"></a> [queue_id](#output_queue_id)       | queue id         |
| <a name="output_queue_name"></a> [queue_name](#output_queue_name) | queue name       |
| <a name="output_sbus_id"></a> [sbus_id](#output_sbus_id)          | service bus id   |
| <a name="output_sbus_name"></a> [sbus_name](#output_sbus_name)    | service bus name |
| <a name="output_topic_id"></a> [topic_id](#output_topic_id)       | topics id        |
| <a name="output_topic_name"></a> [topic_name](#output_topic_name) | topic name       |

<!-- END_TF_DOCS -->
