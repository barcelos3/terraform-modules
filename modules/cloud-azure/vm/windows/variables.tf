variable "vm_name" {
  type        = string
  description = "Add vm name"
}

variable "computer_name" {
  type = string
  default = null
  description = "Specifies the Hostname which should be used for this Virtual Machine.If unspecified this defaults to the value for the name field."
}

variable "vm_rg_name" {
  type        = string
  description = "Resource group name"
}

variable "vm_rg_location" {
  type        = string
  description = "Resource group location"
}

variable "vm_tier" {
  type        = string
  default     = "Standard_D8ds_v4"
  description = "Tier vm family"
}

variable "vm_user" {
  type        = string
  default     = "adminuser"
  description = "User access vm"
}

variable "vm_pass" {
  type        = string
  description = "Password access vm"
}

variable "vm_private" {
  type        = bool
  description = "Set private network private if true"

}

variable "vm_disk_size" {
  type        = number
  default     = 127
  description = "The Size of the Internal OS Disk in GB, if you wish to vary from the size used in the image this Virtual Machine is sourced from."
}

variable "storage_account_type" {
  type        = string
  default     = "Standard_LRS"
  description = "OS storage disk type"
}

variable "caching" {
  type        = string
  default     = "ReadWrite"
  description = "OS storage disk caching"
}

variable "tags" {
  type        = map(any)
  description = "Tags values"
}

variable "rules_nsg" {
  type        = list(any)
  description = "Apply rules networks"

}

variable "subnet_id" {
  type        = string
  description = "Subnet id correlation"
}

variable "custom_data" {
  type        = string
  default     = null
  description = "Start script custom data"
}

variable "publisher" {
  type        = string
  default     = "MicrosoftWindowsServer"
  description = "os image publisher"
}

variable "offer" {
  type        = string
  default     = "WindowsServer"
  description = "os image offer"
}

variable "sku" {
  type        = string
  default     = "2019-Datacenter"
  description = "os image sku"
}

variable "os_image_version" {
  type        = string
  default     = "latest"
  description = "os image version"
}