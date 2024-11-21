resource "azurerm_resource_group" "rg" {
  name     = "${var.lastname}-rg-${var.environment}-${lower(replace(var.location, " ", ""))}-01"
  location = var.location
}
