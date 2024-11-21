resource "azurerm_service_plan" "app_plan" {
  name                = "${var.lastname}-asp-${var.environment}-${lower(replace(var.location, " ", ""))}-01"
  location            = var.location
  resource_group_name = azurerm_resource_group.rg.name
  kind                = var.app_service_os

  sku {
    tier = "Free"
    size = var.app_service_sku
  }
}

resource "azurerm_linux_web_app" "webapp" {
  name                = "${var.lastname}-webapp-${var.environment}-${lower(replace(var.location, " ", ""))}-01"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_app_service_plan.app_plan.id

  site_config {
    ftps_state        = "Disabled"
    minimum_tls_version   = var.tls_version
    linux_fx_version  = var.runtime_version
  }

  https_only = var.https_only
}
