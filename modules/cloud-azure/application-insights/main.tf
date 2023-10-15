resource "azurerm_application_insights" "create_application_insights" {
  name                = var.application_insights_name
  location            = var.application_insights_rg_location
  resource_group_name = var.application_insights_rg_name
  application_type    = var.application_type
  tags = var.tags

  lifecycle {
    ignore_changes = [
      tags,
    ]
  }
}