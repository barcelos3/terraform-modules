output "vm_name" {
  value = azurerm_windows_virtual_machine.create_vm.name
  description = "Vm name"
}

output "vm_image" {
  value = azurerm_windows_virtual_machine.create_vm.source_image_reference
  description = "Vm image"
}

output "vm_id" {
  value = azurerm_windows_virtual_machine.create_vm.id
  description = "Vm ID"
}