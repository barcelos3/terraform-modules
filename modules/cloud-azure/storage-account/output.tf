output "storage_account_name" {
  value       = azurerm_storage_account.create_storage_account.name
  description = "Storage account name"
}

output "storage_account_primary_access_key" {
  value       = azurerm_storage_account.create_storage_account.primary_access_key
  description = "Storage account primary access key"
}

output "storage_account_tier" {
  value       = azurerm_storage_account.create_storage_account.account_tier
  description = "Storage account tier"
}
