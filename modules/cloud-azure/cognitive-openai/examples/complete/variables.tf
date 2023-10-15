variable "openai_name" {
  type        = string
  description = "openai services name"
}

variable "openai_access" {
  type        = bool
  default     = true
  description = "(Optional) Whether public network access is allowed for the openai Account. Defaults to true"
}

variable "tags" {
  type        = map(any)
  description = "Tags values"
}

variable "openai_rg_location" {
  type        = string
  description = "openai services region"
}

variable "openai_rg_name" {
  type        = string
  description = "openai services resource group"
}

variable "openai_sku" {
  type        = string
  default     = "S0"
  description = "openai services tier"
}

variable "deployment_mode" {
  type        = bool
  default     = false
  description = "enabled openai services deployment mode"
}

variable "deploy_name" {
  type        = string
  default     = null
  description = "openai services deployment name"
}

variable "deploy_openai_account_id" {
  type        = string
  default     = null
  description = "openai services account id"
}

variable "deploy_scale_type" {
  type        = string
  default     = "Standard"
  description = "openai services deployment scale type"
}

variable "deploy_scale_tier" {
  type        = string
  default     = "free"
  description = "openai services deployment scale tier"
}

variable "deploy_model_name" {
  type        = string
  default     = null
  description = "openai services deployment model name"
}

variable "deploy_model_format" {
  type        = string
  default     = "OpenAI"
  description = "openai services deployment model format"
}

variable "deploy_model_version" {
  type        = string
  default     = null
  description = "openai services deployment model format"
}

variable "custom_subdomain_name" {
  type        = string
  default     = null
  description = "custom subdomain"

}
