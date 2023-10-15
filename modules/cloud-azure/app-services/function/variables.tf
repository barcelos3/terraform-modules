variable "function_prefix" {
  type        = string
  default     = "fn"
  description = "prefix name"
}

variable "function_name" {
  type        = string
  description = "Add vm name"
}

variable "function_rg_name" {
  type        = string
  description = "Resource group name"
}

variable "function_rg_location" {
  type        = string
  description = "Resource group location"
}

variable "storage_account_name" {
  type        = string
  description = "Tier vm family"
}

variable "storage_account_primary_access_key" {
  type        = string
  description = "Storage account primary access key"
}

variable "service_plan_id" {
  type        = string
  description = "Service plan id"
}

variable "app_settings" {
  type        = map(string)
  default     = null
  description = "app_settings values"
}

variable "tags" {
  type        = map(any)
  description = "Tags values"
}

variable "app_mode" {
  type        = string
  description = "OS type"

  validation {
    condition     = var.app_mode == "windows" || var.app_mode == "linux"
    error_message = "The app_mode must be windows or linux"
  }
}

variable "application_insights_connection_string" {
  type        = string
  default     = null
  description = "Application insights connection string"
}

variable "application_insights_key" {
  type        = string
  default     = null
  description = "Application insights key"
}

variable "always_on" {
  type        = bool
  default     = false
  description = "Application insights key"

  validation {
    condition     = var.always_on == true || var.always_on == false
    error_message = "Possible values include true or false"
  }
}

variable "scm_minimum_tls_version" {
  type        = string
  default     = "1.2"
  description = "Minimum tls version"

  validation {
    condition     = var.scm_minimum_tls_version == "1.0" || var.scm_minimum_tls_version == "1.1" || var.scm_minimum_tls_version == "1.2"
    error_message = "Minimum tls version. Possible values include 1.0, 1.1 and 1.2"
  }
}

variable "use_32_bit_worker" {
  type        = bool
  default     = false
  description = "Use 32 bit worker"

  validation {
    condition     = var.use_32_bit_worker == true || var.use_32_bit_worker == false
    error_message = "Possible values include true or false"
  }
}


variable "dotnet_version" {
  type        = string
  default     = null
  description = "Dotnet version"

  validation {
    condition     = var.dotnet_version == null || var.dotnet_version == "v3.0" || var.dotnet_version == "v4.0" || var.dotnet_version == "v6.0" || var.dotnet_version == "v7.0" || var.dotnet_version == "3.1" || var.dotnet_version == "6.0" || var.dotnet_version == "7.0"
    error_message = "(Optional) The version of .NET to use. Possible for service plan WINDOWS values include v3.0, v4.0, v6.0 and v7.0. Possible for service plan LINUX values include 3.1, 6.0 and 7.0"
  }
}

variable "use_dotnet_isolated_runtime" {
  type        = bool
  default     = false
  description = "use_dotnet_isolated_runtime"

  validation {
    condition     = var.use_dotnet_isolated_runtime == true || var.use_dotnet_isolated_runtime == false
    error_message = "Possible values include true or false"
  }
}

variable "java_version" {
  type        = string
  default     = null
  description = "Java version"

  validation {
    condition     = var.java_version == null || var.java_version == "1.8" || var.java_version == "11" || var.java_version == "17" || var.java_version == "8" || var.java_version == "11"
    error_message = "(Optional) The Version of Java to use. Supported versions for service plan WINDOWS include 1.8, 11 and 17 (In-Preview). Possible for service plan LINUX values include 8, 11 and 17"
  }
}

variable "node_version" {
  type        = string
  default     = null
  description = "Node version"

  validation {
    condition     = var.node_version == null || var.node_version == "~12" || var.node_version == "~14" || var.node_version == "~16" || var.node_version == "~18" || var.node_version == "12" || var.node_version == "14" || var.node_version == "16" || var.node_version == "18"
    error_message = "(Optional) The version of Node to run. Possible values for service plan WINDOWS include ~12, ~14, ~16 and ~18. Possible values for service plan LINUX include 12, 14, 16 and 18"
  }
}

variable "powershell_core_version" {
  type        = string
  default     = null
  description = "Powershell Core version"

  validation {
    condition     = var.powershell_core_version == null || var.powershell_core_version == "7" || var.powershell_core_version == "7.2"
    error_message = "(Optional) The version of PowerShell Core to run. Possible values are 7 and 7.2."
  }
}

variable "use_custom_runtime" {
  type        = string
  default     = null
  description = "(Optional) Should the Function App use a custom runtime?"
}

variable "python_version" {
  type        = string
  default     = null
  description = "Python version"

  validation {
    condition     = var.python_version == null || var.python_version == "3.11" || var.python_version == "3.10" || var.python_version == "3.9" || var.python_version == "3.8" || var.python_version == "3.7"
    error_message = "(Optional) The version of Python to run. Possible values are 3.11, 3.10, 3.9, 3.8 and 3.7."
  }
}