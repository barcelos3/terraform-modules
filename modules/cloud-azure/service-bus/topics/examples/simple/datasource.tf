data "azurerm_servicebus_namespace" "example" {
  name                = "examplenamespace"
  resource_group_name = "example-resources"
}