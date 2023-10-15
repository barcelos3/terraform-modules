module "resource_group" {
  source = "../../../resource-group"

  rg_name     = var.rg_name
  rg_location = var.rg_location

  tags = {
    terraform = true
  }
}

module "application_insights" {
  source = "../../application-insights"

  application_insights_name        = var.application_insights_name
  application_insights_rg_location = module.resource_group.resource_group_location
  application_insights_rg_name     = module.resource_group.resource_group_name

  tags = {
    terraform = true
  }
}