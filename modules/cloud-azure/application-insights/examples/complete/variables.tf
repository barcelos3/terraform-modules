variable "function_name" {
  type    = string
  default = "function-teste"
}

variable "rg_name" {
  type    = string
  default = "remove-teste"
}

variable "rg_location" {
  type    = string
  default = "eastus"
}

variable "service_plan_name" {
  type    = string
  default = "hostingPlan-adm-windows-hml"
}

variable "service_plan_rg_name" {
  type    = string
  default = "rg-jornadaAdm-shared-us-hml"
}

variable "app_settings" {
  type    = map(string)
  default = { "FUNCTIONS_WORKER_RUNTIME" = "dotnet", "FUNCTIONS_EXTENSION_VERSION" = "~4" }
}

variable "app_mode" {
  type    = string
  default = "windows"
}

variable "always_on" {
  type    = bool
  default = true
}

variable "dotnet_version" {
  type    = string
  default = "v6.0"
}

variable "application_insights_name" {
  type    = string
  default = "application-insights-teste"
}

variable "storage_account_name" {
  type    = string
  default = "stgeaccountteste123"
}