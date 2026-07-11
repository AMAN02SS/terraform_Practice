resource "azurerm_resource_group" "rg" {
    count = var.rg_count
    name = "DeleteMe-${count.index + 1}"
    location = var.rg_location
}