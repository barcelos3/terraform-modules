resource "azurerm_servicebus_topic" "create_topic" {
  name         = "${var.topic_name}-${var.topic_sufix}"
  namespace_id = var.topic_nsid

  enable_partitioning = true
}
