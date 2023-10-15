variable "storage_account_name" {
  type        = string
  description = "Add vm name"
}

variable "storage_account_rg_name" {
  type        = string
  description = "Resource group name"
}

variable "storage_account_rg_location" {
  type        = string
  description = "Resource group location"
}

variable "storage_account_tier" {
  type        = string
  default     = "Standard"
  description = "Tier storage account family"
}

variable "storage_account_replication_type" {
  type        = string
  default     = "LRS"
  description = "Storage account replication type"
}

variable "tags" {
  type        = map(any)
  description = "Tags values"
}