variable "ssm_name" {
  type        = string
  description = "inpnut ssm name"
}

variable "ssm_description" {
  type        = string
  default     = "access token"
  description = "inpnut ssm description"
}

variable "ssm_value" {
  type        = string
  description = "inpnut ssm value"
}

variable "ssm_tier" {
  type        = string
  default     = "Standard"
  description = "inpnut ssm tier"
}

variable "ssm_type" {
  type        = string
  default     = "SecurityString"
  description = "inpnut ssm type"
}

variable "ssm_data_type" {
  type        = string
  default     = "text"
  description = "inpnut ssm data type"
}

variable "ssm_consumer" {
  type        = bool
  default     = false
  description = "enabled consumer parameter"
}

variable "ssm_datasource" {
  type        = string
  default     = null
  description = "input parameter name exist"
}

variable "tags" {
  type        = map(any)
  description = "tags values"
}
