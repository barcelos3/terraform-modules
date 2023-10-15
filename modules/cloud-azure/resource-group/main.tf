resource "azurerm_resource_group" "create_resource_group" {
  name     = lower("rg-${var.rg_name}")
  location = var.rg_location

  tags = var.tags
  lifecycle {
    ignore_changes = [
      tags,
   ] 
 }

}
