terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}
provider "azurerm" {
  features {}
  subscription_id = "5a0fd0f8-6f72-4f2a-93ce-af0d5b0114e9"
}
resource "azurerm_resource_group" "rg_devops" {
  name     = var.rg_name
  location = var.location
}
output "resource_group_name" {
value = azurerm_resource_group.rg_devops.name  
}

output "resource_group_location" {
value = azurerm_resource_group.rg_devops.location  
sensitive = true
}