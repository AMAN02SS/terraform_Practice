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
resource "azurerm_resource_group" "devops_rg" {
  name     = "Devops_RG"
  location = "Central India"
}
