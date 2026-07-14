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
resource "azurerm_public_ip" "web" {
  name                = "web-pip"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method = "Static"
}
resource "azurerm_network_interface" "web" {
  name = "web-nic"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  ip_configuration {
    name = "internal"
    subnet_id = azurerm_subnet.web.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.web.id
  }
}
# VM use NIC
resource "azurerm_linux_virtual_machine" "vm" {
    name = "vm"
    location = azurerm_resource_group.rg.location
    os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
    disk_size_gb         = 64  # Optional: Overrides the default image size
  }
    resource_group_name = azurerm_resource_group.rg.name
    size = "Standard_B2s"
    network_interface_ids = [
        azurerm_network_interface.web.id
    ]
}