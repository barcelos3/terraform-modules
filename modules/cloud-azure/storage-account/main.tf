resource "azurerm_storage_account" "create_storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.storage_account_rg_name
  location                 = var.storage_account_rg_location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  tags = var.tags

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}