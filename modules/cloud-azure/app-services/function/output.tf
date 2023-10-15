output "Function_linux_name" {
  value       = azurerm_linux_function_app.create_function_linux.*.name
  description = "Function name"
}

output "Function_windows_name" {
  value       = azurerm_windows_function_app.create_function_windows.*.name
  description = "Function name"
}

output "Function_linux_id" {
  value       = azurerm_linux_function_app.create_function_linux.*.id
  description = "Function ID"
}

output "Function_windows_id" {
  value       = azurerm_windows_function_app.create_function_windows.*.id
  description = "Function ID"
}

output "app_mode" {
  value       = var.app_mode
  description = "OS type"
}