variable "application_insights_name" {
  type        = string
  description = "Add application insights name"
}

variable "application_insights_rg_name" {
  type        = string
  description = "Resource group name"
}

variable "application_insights_rg_location" {
  type        = string
  description = "Resource group location"
}

variable "application_type" {
  type        = string
  default     = "web"
  description = "application type"
}

variable "tags" {
  type        = map(any)
  description = "Tags values"
}