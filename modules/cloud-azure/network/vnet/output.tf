output "vnet_name" {
  value       = azurerm_virtual_network.create_vnet.name
  description = "Vnet Name"
}

output "vnet_id" {
  value       = azurerm_virtual_network.create_vnet.id
  description = "Vnet ID"
}