module "resource_group" {
  source = "../../../resource-group"

  rg_name     = var.rg_name
  rg_location = var.rg_location

  tags = {
    terraform = true
  }
}

module "storage_account" {
  source = "../../storage-account"

  storage_account_name        = var.storage_account_name
  storage_account_rg_name     = module.resource_group_teste.resource_group_name
  storage_account_rg_location = module.resource_group_teste.resource_group_location

  tags = {
    terraform = true
  }
}