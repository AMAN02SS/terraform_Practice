resource "azurerm_resource_group" "rg" {
  name     = "Dev-RG-NSG"
  location = "Central India"
}

resource "azurerm_network_security_group" "nsg" {
  name     = "DemoNSG"
  location = "Central India"
  resource_group_name = "rg"

  dynamic "security_rule" {
    for_each = local.ports

    content {
      name                   = security_rule.key
      destination_port_range = security_rule.value
    }
  }
}
