# resource "azurerm_resource_group" "rg" {
#     for_each = toset(["Dev", "Test", "Prod"])
#     name = "$(each.key)-RG"
#     location = "Central India"
# }

resource "azurerm_resource_group" "rg" {
    for_each = var.resource_group

    name = "${each.key}-RG"
    location = each.value
  
}