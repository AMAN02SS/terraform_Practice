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
}
resource "azurerm_resource_group" "rg" {
  name     = "Devops-rg"
  location = "East US"
}
resource "azurerm_virtual_network" "main" {
  name                = "Devops_vnet"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  address_space = ["10.0.0.0/16"]
}
resource "azurerm_subnet" "web" {
  name                 = "web-subnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.1.0/24"]
}
resource "azurerm_route_table" "main" {
  name                = "rt-main"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
resource "azurerm_route" "internet" {
  name                = "default-route"
  resource_group_name = azurerm_resource_group.rg.name
  route_table_name    = azurerm_route_table.main.name
  address_prefix      = "0.0.0.0/0"
  next_hop_type       = "Internet"
}
# Associate Route Table
resource "azurerm_subnet_route_table_association" "name" {
  subnet_id = azurerm_subnet.web.id
  route_table_id = azurerm_route_table.main.id
}