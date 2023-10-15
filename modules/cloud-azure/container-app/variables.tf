variable "app_location" {
  type    = string
  default = "West US"
}

variable "app_environment_name" {
  type        = string
  description = "App Environment"
}

variable "app_name" {
  type    = string
  default = "app-container"
}

# variable "app_container_name" {
#   type        = string
#   description = "app container name"
# }

variable "app_container_image" {
  type        = string
  description = "container image"
}

variable "app_container_cpu" {
  type    = number
  default = 0.25
}

variable "app_container_memory" {
  type        = string
  description = "A quantidade de vCPU a ser alocada ao contêiner."

}

variable "app_log_name" {
  type        = string
  description = "azurerm log analytics workspace"
}

variable "sku_log_analytics" {
  type        = string
  description = "type log analytics"
}

variable "revision_mode" {
  type        = string
  default     = "Single"
  description = "Tipo mode revision"
}
variable "resource_group_name" {
  description = "resource group name"
  type        = string
}

variable "log_analytics" {
  type        = bool
  description = "enable log analytics"
  default     = false
}

variable "tags" {
  type        = map(any)
  description = "Tags values"
}

variable "create_environment" {
  type        = bool
  description = "App Environment"
}
variable "infrastructure_subnet_id" {
  type  = string
  description = "infrastructure_subnet_id"
}