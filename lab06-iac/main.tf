# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.7.0"
    }
  }
}

# Configure the Microsoft Azure Provider

provider "azurerm" {
    subscription_id = "e37aaf0e-5c2c-44b9-8c3c-64dbf33031a0"
    resource_provider_registrations = "none"
    features {}
}