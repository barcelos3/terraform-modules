variable "sbus_prefix" {
  type        = string
  default     = "sbus"
  description = "prefix name"
}

variable "tags" {
  type        = map(any)
  description = "Tags values"
}

variable "sbus_name" {
  type        = string
  description = "service bus name"
}

variable "sbus_location" {
  type        = string
  description = "service bus region"
}

variable "sbus_rg" {
  type        = string
  description = "service bus resource group"
}

variable "sbus_tier" {
  type        = string
  default     = "basic"
  description = "service bus tier"

  validation {
    condition     = var.sbus_tier == "basic" || var.sbus_tier == "standard" || var.sbus_tier == "premium"
    error_message = "choose 'basic' for work queues or 'standard' to queues and topics. Tier 'premium' only production"
  }
}

variable "sbus_queue" {
  type        = bool
  default     = false
  description = "active create queues in service bus"
}

variable "sbus_queue_name" {
  type        = string
  default     = null
  description = "create queue name"
}

variable "sbus_topic" {
  type        = bool
  default     = false
  description = "active create topics in service bus"
}

variable "sbus_topic_name" {
  type        = string
  default     = null
  description = "create topic name"
}
