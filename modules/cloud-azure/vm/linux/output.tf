output "vm_name" {
  value       = azurerm_linux_virtual_machine.create_vm.name
  description = "Vm name"
}

output "vm_image" {
  value       = azurerm_linux_virtual_machine.create_vm.source_image_reference
  description = "Vm image"
}

output "vm_id" {
  value       = azurerm_linux_virtual_machine.create_vm.id
  description = "Vm ID"
}

output "vm_public_ip" {
  value       = azurerm_linux_virtual_machine.create_vm.public_ip_address
  description = "VM public ip"
}

output "vm_private_ip" {
  value       = azurerm_linux_virtual_machine.create_vm.private_ip_address
  description = "VM private ip"
}
