variable "cognitive_name" {
  type        = string
  description = "cognitive services name"
}

variable "cognitive_access" {
  type        = bool
  default     = true
  description = "(Optional) Whether public network access is allowed for the Cognitive Account. Defaults to true"
}

variable "tags" {
  type        = map(any)
  description = "Tags values"
}

variable "custom_subdomain_name" {
  default     = null
  type        = string
  description = "(Optional) The subdomain name used for token-based authentication. Changing this forces a new resource to be created."
}

variable "cognitive_rg_location" {
  type        = string
  description = "cognitive services region"
}

variable "cognitive_rg_name" {
  type        = string
  description = "cognitive services resource group"
}

variable "cognitive_sku" {
  type        = string
  default     = "S0"
  description = "cognitive services tier"
}

variable "deployment_mode" {
  type        = bool
  default     = false
  description = "enabled cognitive services deployment mode"
}

variable "deploy_name" {
  type        = string
  default     = null
  description = "cognitive services deployment name"
}

variable "deploy_cognitive_account_id" {
  type        = string
  default     = null
  description = "cognitive services account id"
}

variable "deploy_scale_type" {
  type        = string
  default     = "Standard"
  description = "cognitive services deployment scale type"
}

variable "deploy_scale_tier" {
  type        = string
  default     = "free"
  description = "cognitive services deployment scale tier"
}

variable "deploy_model_name" {
  type        = string
  default     = null
  description = "cognitive services deployment model name"
}

variable "deploy_model_format" {
  type        = string
  default     = "OpenAI"
  description = "cognitive services deployment model format"
}

variable "deploy_model_version" {
  type        = string
  default     = null
  description = "cognitive services deployment model format"
}
