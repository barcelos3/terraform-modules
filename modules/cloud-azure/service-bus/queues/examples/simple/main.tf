module "queues" {
  source = "../service-bus/queues"

  queue_name         = var.myqueues
  queue_max_delivery = 5
  queue_nsid         = data.azurerm_servicebus_namespace.example.id
}
