variable "postgresql_server_name" {
  type        = string
  default     = "postgresql-server-teste"
  description = "Postgresql server name"
}

variable "administrator_login" {
  type        = string
  description = "Administrator login"
}

variable "administrator_login_password" {
  type        = string
  description = "Administrator login password"
}

variable "postgresql_server_sku_name" {
  type        = string
  default     = "GP_Standard_D4s_v3"
  description = "Postgresql server sku name"
}

variable "rg_name" {
  type        = string
  default     = "teste"
  description = "Resource group name"
}

variable "rg_location" {
  type        = string
  default     = "eastus"
  description = "Resource group region"
}

variable "tags" {
  type = map(any)
  default = {
    terraform = true
  }
  description = "tag values"
}