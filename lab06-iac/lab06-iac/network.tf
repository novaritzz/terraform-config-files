resource "azurerm_virtual_network" "vnet" {
  name                = "${var.lastname}-vnet-${var.environment}-${lower(replace(var.location, " ", ""))}-01"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["172.16.0.0/16"]
}

resource "azurerm_subnet" "subnet" {
  name                 = "${var.lastname}-subnet-${var.environment}-${lower(replace(var.location, " ", ""))}-01"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.environment == "staging" ? [var.staging_subnet_cidr] : [var.production_subnet_cidr]
}
