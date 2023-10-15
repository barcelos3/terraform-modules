resource "azurerm_virtual_network" "create_vnet" {
  name                = lower("vnet-${var.vnet_name}")
  location            = var.vnet_rg_location
  resource_group_name = var.vnet_rg_name
  address_space       = var.vnet_address
  dns_servers         = var.vnet_dns_servers

  tags = var.tags

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}