terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.0"
    }
  }
}
provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "rg" {
    name = "rg_myproject_dev01"
}

output "rg_name" {
  value = data.azurerm_resource_group.rg.id
}