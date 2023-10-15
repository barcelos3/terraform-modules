module "topics" {
  source = "../service-bus/topics"

  queue_name         = var.mytopics
  queue_max_delivery = 3
  queue_nsid         = data.azurerm_servicebus_namespace.example.id
}
