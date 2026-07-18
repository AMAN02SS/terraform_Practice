resource "azurerm_resource_group" "rg_VNet" {
  name = "rg-net"
  location = "Central India"
}

resource "azurerm_virtual_network" "lab_VNet" {
  resource_group_name = azurerm_resource_group.rg_VNet.name
  name = "Lab_VNet"
  location = azurerm_resource_group.rg_VNet.location
  address_space = ["10.0.0.0/16"]
}