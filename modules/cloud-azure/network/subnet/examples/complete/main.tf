module "resource_group" {
  source = "../../../../resource-group"

  rg_name     = var.project_name
  rg_location = var.rg_location

  tags = {
    terraform = true
  }
}

module "vnet" {
  source = "../../../vnet"

  vnet_name        = var.project_name
  vnet_rg_location = module.resource_group.resource_group_location
  vnet_rg_name     = module.resource_group.resource_group_name
  vnet_address     = var.vnet_address

  tags = {
    terraform = true
  }
}

module "subnet" {
  source = "../../"

  subnet_name        = var.project_name
  subnet_rg_name     = module.resource_group.resource_group_name
  subnet_rg_location = module.resource_group.resource_group_location
  subnet_intg_vnet   = module.vnet.vnet_name
  subnet_adress      = var.subnet_adress
  service_endpoints  = var.service_endpoints
}