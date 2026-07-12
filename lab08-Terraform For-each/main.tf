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


#### with out for each Example : -------------------------------------------------------------------------------------->

# locals {
#   rgs = [
#     "Dev-RG-1",
#     "Prod-RG-2", // Delete this after apply
#     "Test-RG-3"
#   ]
# }

# locals {
#   rgs = [
#     "Dev-RG-1",
#     "Test-RG-3"
#   ]
# }

# resource "azurerm_resource_group" "rg" {
#   count = length(local.rgs)

#   name = local.rgs[count.index]
#   location = var.rg_location
# }

# Expected behaviour : terraform delete previous "Prod-RG-2" , again for change indexing terraform again delete "Test-RG-3" and add it again with indexing 2 as "Test-RG-3"