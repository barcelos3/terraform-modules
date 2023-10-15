variable "vnet_name" {
  type        = string
  description = "Vnet Name"
}

variable "vnet_rg_location" {
  type        = string
  description = "Gesouce Group Location"
}

variable "vnet_rg_name" {
  type        = string
  description = "Resouce Group Name"
}

variable "vnet_address" {
  type        = list(string)
  description = "Vnet Address"
  default     = ["10.0.0.0/16"]
}

variable "vnet_dns_servers" {
  type        = list(string)
  description = "Vnet DNS Servers"
  default     = null //["172.26.244.11", "172.26.244.12"]
}

variable "tags" {
  type        = map(any)
  description = "Tag values"
}

