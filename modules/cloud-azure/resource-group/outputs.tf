output "resource_group_name" {
    value = azurerm_resource_group.create_resource_group.name
    description = "Name of the resource group"  
}

output "resource_group_location" {
    value = azurerm_resource_group.create_resource_group.location
    description = "Location of the resource group"  
}
