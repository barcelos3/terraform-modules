module "resource_group_teste" {
  source = "../../../../resource-group"

  rg_name     = var.rg_name
  rg_location = var.rg_location

  tags = {
    terraform = true
  }
}

data "azurerm_service_plan" "service_plan_teste" {
  name                = var.service_plan_name
  resource_group_name = var.service_plan_rg_name
}

module "function_windows" {
  source = "../../"

  function_name                          = var.function_name
  function_rg_location                   = module.resource_group_teste.resource_group_location
  function_rg_name                       = module.resource_group_teste.resource_group_name
  storage_account_name                   = module.storage_account_teste.storage_account_name
  storage_account_primary_access_key     = module.storage_account_teste.storage_account_primary_access_key
  service_plan_id                        = data.azurerm_service_plan.service_plan_teste.id
  app_settings                           = var.app_settings
  app_mode                               = var.app_mode
  application_insights_connection_string = module.application_insights_teste.application_insights_connection_string
  application_insights_key               = module.application_insights_teste.instrumentation_key
  always_on                              = var.always_on
  dotnet_version                         = var.dotnet_version

  tags = {
    terraform = true
  }
}

module "application_insights_teste" {
  source = "../../../../application-insights"

  application_insights_name        = var.application_insights_name
  application_insights_rg_location = module.resource_group_teste.resource_group_location
  application_insights_rg_name     = module.resource_group_teste.resource_group_name

  tags = {
    terraform = true
  }
}

module "storage_account_teste" {
  source = "../../../../storage-account"

  storage_account_name        = var.storage_account_name
  storage_account_rg_name     = module.resource_group_teste.resource_group_name
  storage_account_rg_location = module.resource_group_teste.resource_group_location

  tags = {
    terraform = true
  }
}