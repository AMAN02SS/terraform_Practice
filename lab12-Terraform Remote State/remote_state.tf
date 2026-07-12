terraform {
  backend "azurerm" {
    resource_group_name = "terraform-state-rg"
    storage_account_name = "terraformstate120726"
    container_name = "tfstate"
    key = "terrafrom.tfstate"
  }
}