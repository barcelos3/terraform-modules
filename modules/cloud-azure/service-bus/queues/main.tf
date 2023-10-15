resource "azurerm_servicebus_queue" "create_queue" {
  name         = "${var.queue_name}-${var.queue_sufix}"
  namespace_id = var.queue_nsid

  enable_partitioning = var.enable_partitioning
  max_delivery_count  = var.queue_max_delivery
}
