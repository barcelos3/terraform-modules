resource "azurerm_subnet" "create_subnet" {
  name                 = lower("subnet-${var.subnet_name}")
  resource_group_name  = var.subnet_rg_name
  virtual_network_name = var.subnet_intg_vnet
  address_prefixes     = var.subnet_adress
  service_endpoints    = var.service_endpoints
}