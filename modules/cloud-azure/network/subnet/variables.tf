variable "subnet_name" {
  type        = string
  description = "Subnet Name"
}

variable "subnet_rg_name" {
  type        = string
  description = "Subnet Name"
}

variable "subnet_rg_location" {
  type        = string
  description = "Subnet Name"
}

variable "subnet_adress" {
  type        = list(string)
  description = "Subnet Adress"
  default     = ["10.0.2.0/24"]
}

variable "subnet_intg_vnet" {
  type        = string
  description = "Vnet Name Attchment in Subnet"
}

variable "service_endpoints" {
  type = list(string)
  description = "Subnet service endpoints"
  default = null
}