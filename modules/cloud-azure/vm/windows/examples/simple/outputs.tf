output "resource_group_name" {
  value       = module.resource_group.resource_group_name
  description = "Resource group created"
}

output "vm_name" {
  value       = module.vm_public.vm_name
  description = "Virtual Machine name"
}

output "vnet_name" {
  value       = module.vnet.vnet_name
  description = "Vnet name"
}

output "subnet_name" {
  value       = module.subnet.subnet_name
  description = "Subnet name"
}