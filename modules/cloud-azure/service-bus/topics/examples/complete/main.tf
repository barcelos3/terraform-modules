module "topics" {
  count = length(var.mytopics)

  source = "../service-bus/topics"

  queue_name         = element(var.mytopics, count.index)
  queue_max_delivery = 2
  queue_nsid         = data.azurerm_servicebus_namespace.example.id
}
