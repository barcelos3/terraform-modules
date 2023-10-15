output "storage_account_name" {
  value       = module.storage_account.storage_account_name
  description = "storage account name"
}

output "storage_account_tier" {
  value       = module.storage_account.storage_account_tier
  description = "storage account tier"
}