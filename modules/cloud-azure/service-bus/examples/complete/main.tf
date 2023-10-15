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
