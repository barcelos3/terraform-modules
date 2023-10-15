output "subnet_id" {
  value = azurerm_subnet.create_subnet.id
  description = "Subnet ID created"
}

output "subnet_name" {
  value = azurerm_subnet.create_subnet.name
  description = "Subnet Name created"
}

output "subnet_address_prefixes"{
  value = azurerm_subnet.create_subnet.address_prefixes
  description = "Subnet address prefixes"
}

