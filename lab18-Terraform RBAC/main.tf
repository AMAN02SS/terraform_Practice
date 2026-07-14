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
resource "azurerm_resource_group" "example" {
  name = "rg"
  location = "East US"
}

data "azuread_user" "example" {
  user_principal_name = "aman.s.s.official@gmail.com"
}

resource "azurerm_role_assignment" "rbac" {
principal_id = data.azuread_user.example.object_id
role_definition_name = "Contributer"
scope = azurerm_resource_group.example.object_id
}