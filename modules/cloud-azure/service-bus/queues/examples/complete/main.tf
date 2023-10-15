module "queues" {
  count = length(var.myqueues)

  source = "../service-bus/queues"

  queue_name          = element(var.myqueues, count.index)
  queue_max_delivery  = 2
  queue_nsid          = data.azurerm_servicebus_namespace.example.id
  enable_partitioning = false
}
