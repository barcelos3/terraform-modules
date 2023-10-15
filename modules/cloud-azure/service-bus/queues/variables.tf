variable "queue_sufix" {
  type        = string
  default     = "queue"
  description = "sufix name queue"
}

variable "queue_name" {
  type        = string
  description = "queue name"
}

variable "queue_nsid" {
  type        = string
  default     = null
  description = "queue correlation namespace id"
}

variable "queue_max_delivery" {
  type        = number
  default     = 10
  description = " Integer value which controls when a message is automatically dead lettered"
}

variable "queue_max_size" {
  type        = number
  default     = 1024
  description = "Integer value which controls the size of memory allocated for the queue. In megabytes"
}

variable "queue_max_message_size" {
  type        = number
  default     = null
  description = "Integer value which controls the maximum size of a message allowed on the queue for Premium SKU"
}

variable "enable_partitioning" {
  type = bool
  default = true
  description = "Boolean flag which controls whether to enable the queue to be partitioned across multiple message brokers"
}

# variable "enable_data_sbus" {
#   type        = bool
#   default     = false
#   description = "enable data source sbus"
# }

# variable "data_sbus_name" {
#   type        = string
#   default     = null
#   description = "data source service bus name"
# }

# variable "data_sbus_rg" {
#   type        = string
#   default     = null
#   description = "data source service bus resource group"
# }
