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
resource "azurerm_network_security_group" "web" {
  name = "web-nsg"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
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
resource "azurerm_network_security_rule" "ssh" {
    resource_group_name = azurerm_network_security_group.web.name
    network_security_group_name = azurerm_network_security_group.web.name
    name = "AllowedSSH"
    priority = 100
    direction = "Inbound" 
    access = "allowed"
    protocol =  "tcp"
    source_port_range = ""
    destination_port_range = "22"
    source_address_prefix = "*"
    destination_address_prefix = "*"
}
# Associate NSG with Subnet
resource "azurerm_network_interface_security_group_association" "vm" {
  network_interface_id = azurerm_network_interface.web.id
  network_security_group_id = azurerm_network_security_group.web.id
}