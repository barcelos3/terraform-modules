resource "azurerm_servicebus_namespace" "create_service_bus" {
  name                = "${var.sbus_prefix}-${var.sbus_name}"
  location            = var.sbus_location
  resource_group_name = var.sbus_rg
  sku                 = title(var.sbus_tier)
  minimum_tls_version = 1.2

  tags = var.tags

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

module "queues" {
  source = "./queues"
  count  = var.sbus_queue == true ? 1 : 0

  queue_name = var.sbus_queue_name
  queue_nsid = azurerm_servicebus_namespace.create_service_bus.id
}

module "topics" {
  source = "./topics"
  count  = var.sbus_topic == true ? 1 : 0

  topic_name = var.sbus_topic_name
  topic_nsid = azurerm_servicebus_namespace.create_service_bus.id
}
