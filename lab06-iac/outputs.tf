output "app_service_url" {
  value       = azurerm_linux_web_app.webapp.default_site_hostname
  description = "URL of the deployed App Service"
}

output "resource_group_name" {
  value       = azurerm_resource_group.rg.name
  description = "Name of the resource group"
}

output "subnet_id" {
  value       = azurerm_subnet.subnet.id
  description = "ID of the created subnet"
}
