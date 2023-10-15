variable "rg_location" {
  type    = string
  default = "eastus"
}

variable "project_name" {
  type    = string
  default = "teste"
}

variable "vnet_address" {
  type    = list(string)
  default = ["10.0.0.0/24"]
}

variable "subnet_adress" {
  type    = list(string)
  default = ["10.0.0.0/27"]
}

variable "service_endpoints" {
  type = list(string)
  default = [
    "Microsoft.AzureActiveDirectory",
    "Microsoft.AzureCosmosDB",
    "Microsoft.CognitiveServices",
    "Microsoft.ContainerRegistry",
    "Microsoft.EventHub",
    "Microsoft.KeyVault",
    "Microsoft.ServiceBus",
    "Microsoft.Sql",
    "Microsoft.Storage",
    "Microsoft.Web",
  ]
}