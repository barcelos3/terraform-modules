resource "azurerm_linux_function_app" "create_function_linux" {
  count               = var.app_mode == "linux" ? 1 : 0
  name                = "${var.function_prefix}-${var.function_name}"
  resource_group_name = var.function_rg_name
  location            = var.function_rg_location
  
  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_primary_access_key
  service_plan_id            = var.service_plan_id
  app_settings               = var.app_settings

  site_config {
    application_insights_connection_string = var.application_insights_connection_string
    application_insights_key               = var.application_insights_key
    always_on                              = var.always_on
    scm_minimum_tls_version                = var.scm_minimum_tls_version
    use_32_bit_worker                      = var.use_32_bit_worker
    application_stack {
      dotnet_version              = var.dotnet_version
      # use_dotnet_isolated_runtime = var.use_dotnet_isolated_runtime
      java_version                = var.java_version
      node_version                = var.node_version
      powershell_core_version     = var.powershell_core_version
      use_custom_runtime          = var.use_custom_runtime
      python_version              = var.python_version 
    }
  }

  tags = var.tags

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}

resource "azurerm_windows_function_app" "create_function_windows" {
  count               = var.app_mode == "windows" ? 1 : 0
  name                = "${var.function_prefix}-${var.function_name}"
  resource_group_name = var.function_rg_name
  location            = var.function_rg_location
  
  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_primary_access_key
  service_plan_id            = var.service_plan_id
  app_settings               = var.app_settings

  site_config {
    application_insights_connection_string = var.application_insights_connection_string
    application_insights_key               = var.application_insights_key
    always_on                              = var.always_on
    scm_minimum_tls_version                = var.scm_minimum_tls_version
    use_32_bit_worker                      = var.use_32_bit_worker
    application_stack {
      dotnet_version              = var.dotnet_version
      use_dotnet_isolated_runtime = var.use_dotnet_isolated_runtime
      java_version                = var.java_version
      node_version                = var.node_version
      powershell_core_version     = var.powershell_core_version
      use_custom_runtime          = var.use_custom_runtime
    }
  }

  tags = var.tags

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}