terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.0"
    }
  }
}
provider "azurerm" {
  features {
    
  }
}

# resource "azurerm_resource_group" "rg" {
#   name = "test-dev-rg1"
#   location = "Central India"
# }

resource "azurerm_resource_group" "rg" {
  name = "${terraform.workspace}-RG"
  location = "East US"
}