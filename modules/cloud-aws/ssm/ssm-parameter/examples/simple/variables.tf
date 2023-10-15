variable "name" {
  type        = string
  default     = "teste-ssm"
  description = "inpnut ssm name"
}

variable "description" {
  type        = string
  default     = "access token"
  description = "inpnut ssm description"
}

variable "value" {
  type        = string
  default     = "ASLKDJLAKS(daslkjmddasd)as"
  description = "inpnut ssm value"
}

variable "tier" {
  type        = string
  default     = "Standard"
  description = "inpnut ssm tier"
}

variable "type" {
  type        = string
  default     = "SecurityString"
  description = "inpnut ssm type"
}

variable "data_type" {
  type        = string
  default     = "text"
  description = "inpnut ssm data type"
}

variable "consumer" {
  type        = bool
  default     = false
  description = "enabled consumer parameter"
}

variable "datasource" {
  type        = string
  default     = null
  description = "input parameter name exist"
}

variable "tags" {
  type        = map(any)
  default     = { terraform : true }
  description = "tags values"
}
