resource "azurerm_resource_group" "abc-rg" {
  name     = "${local.prefix}-RG"
  location = var.rg_location
}
