resource "azurerm_resource_group" "devops_prod_rg" {
  name     = "${local.project}-${local.env}-rg"
  location = "East US"
}
