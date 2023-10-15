# Azure Service Bus Terraform Modules

Terraform module which creates Service Bus, Queues and Topic resources on Azure.

![cogna](https://img.shields.io/badge/cogna-terraform-blueviolet) ![terraform](https://img.shields.io/badge/module-serviceBus-blue) ![terraform](https://img.shields.io/badge/module-queues-yellow) ![terraform](https://img.shields.io/badge/module-topics-green)

## Usage

```hcl
module "sbus" {
  source = "../service-bus/"

  sbus_name     = "sbus-comitre"
  sbus_location = "eastus"
  sbus_rg       = "azure-terraform"
  sbus_tier     = "basic"

  tags = {
    terraform = true
  }
}

module "topics" {
  source = "../service-bus/topics"

  topic_name = "comitre"
  topic_nsid = module.sbus.sbus_id
}

module "queues" {
  count = length(var.myqueues)

  source = "../service-bus/queues"

  queue_name         = element(var.myqueues, count.index)
  queue_max_delivery = 2
  queue_nsid         = module.sbus.sbus_id
}

```

_**note**:_ topics can only be created from the standard sku.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4.4 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.58.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.58.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_queues"></a> [queues](#module\_queues) | ./queues | n/a |
| <a name="module_topics"></a> [topics](#module\_topics) | ./topics | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_servicebus_namespace.create_service_bus](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/servicebus_namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_sbus_location"></a> [sbus\_location](#input\_sbus\_location) | service bus region | `string` | n/a | yes |
| <a name="input_sbus_name"></a> [sbus\_name](#input\_sbus\_name) | service bus name | `string` | n/a | yes |
| <a name="input_sbus_prefix"></a> [sbus\_prefix](#input\_sbus\_prefix) | prefix name | `string` | `"sbus"` | no |
| <a name="input_sbus_queue"></a> [sbus\_queue](#input\_sbus\_queue) | active create queues in service bus | `bool` | `false` | no |
| <a name="input_sbus_queue_name"></a> [sbus\_queue\_name](#input\_sbus\_queue\_name) | create queue name | `string` | `null` | no |
| <a name="input_sbus_rg"></a> [sbus\_rg](#input\_sbus\_rg) | service bus resource group | `string` | n/a | yes |
| <a name="input_sbus_tier"></a> [sbus\_tier](#input\_sbus\_tier) | service bus tier | `string` | `"basic"` | no |
| <a name="input_sbus_topic"></a> [sbus\_topic](#input\_sbus\_topic) | active create topics in service bus | `bool` | `false` | no |
| <a name="input_sbus_topic_name"></a> [sbus\_topic\_name](#input\_sbus\_topic\_name) | create topic name | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tags values | `map(any)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sbus_endpoint"></a> [sbus\_endpoint](#output\_sbus\_endpoint) | service bus endpoint |
| <a name="output_sbus_id"></a> [sbus\_id](#output\_sbus\_id) | service bus id |
| <a name="output_sbus_name"></a> [sbus\_name](#output\_sbus\_name) | service bus name |
| <a name="output_sbus_sku"></a> [sbus\_sku](#output\_sbus\_sku) | service bus sku |
<!-- END_TF_DOCS -->
