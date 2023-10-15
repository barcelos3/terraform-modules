resource "random_password" "create_password" {
  length           = 24
  special          = true
  override_special = "!#$"
}

module "resource_group" {
  source = "git::git@ssh.dev.azure.com:v3/kdop/SRE/modules-terraform//modules/cloud-azure/resource-group"

  rg_name     = var.project_name
  rg_location = var.rg_location

  tags = local.tags_values
}

module "vnet" {
  source = "git::git@ssh.dev.azure.com:v3/kdop/SRE/modules-terraform//modules/cloud-azure/network/vnet"

  vnet_name        = var.project_name
  vnet_rg_location = module.resource_group.resource_group_location
  vnet_rg_name     = module.resource_group.resource_group_name


  tags = local.tags_values
}

module "subnet" {
  source = "git::git@ssh.dev.azure.com:v3/kdop/SRE/modules-terraform//modules/cloud-azure/network/subnet"

  subnet_name        = var.project_name
  subnet_rg_name     = module.resource_group.resource_group_name
  subnet_rg_location = module.resource_group.resource_group_location
  subnet_intg_vnet   = module.vnet.vnet_name

}

module "vm_public" {
  source = "../../"

  vm_private = false

  vm_name        = var.project_name
  vm_rg_name     = module.resource_group.resource_group_name
  vm_rg_location = module.resource_group.resource_group_location
  vm_user        = var.vm_user
  vm_pass        = random_password.create_password.result
  rules_nsg      = local.rules
  vm_disk_size   = 127

  subnet_id = module.subnet.subnet_id

  tags = local.tags_values
}
