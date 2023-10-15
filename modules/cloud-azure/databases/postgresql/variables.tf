variable "postgresql_prefix" {
  type        = string
  default     = "pg"
  description = "Postgresql server prefix"
}

variable "postgresql_server_name" {
  type        = string
  description = "Postgresql server name"
}

variable "postgresql_server_rg_name" {
  type        = string
  description = "Resource group name"
}

variable "postgresql_server_rg_location" {
  type        = string
  description = "Resource group location"
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
  description = "Postgresql server sku name"
}

variable "postgresql_server_version" {
  type        = string
  default     = "12"
  description = "Postgresql server version"
}

variable "postgresql_server_storage_mb" {
  type        = number
  default     = 32768
  description = "Postgresql server storage mb"
}

variable "backup_retention_days" {
  type        = number
  default     = 7
  description = "Postgresql server backup retention days"
}

variable "geo_redundant_backup_enabled" {
  type        = bool
  default     = true
  description = "Postgresql server geo redundant backup enabled"
}

variable "zone" {
  type        = string
  default     = "1"
  description = "Tags values"
}

variable "tags" {
  type        = map(any)
  description = "Tags values"
}

variable "delegated_subnet_id" {
  type        = string
  default     = null
  description = "Delegated subnet id"
}

variable "private_dns_zone_id" {
  type        = string
  default     = null
  description = "Private dns zone id"
}