output "first-rg" {
  value = azurerm_resource_group.rg[0].name
}

output "second-rg" {
  value = azurerm_resource_group.rg[2].name
}

output "third-rg" {
  value = azurerm_resource_group.rg[3].name
}

output "fourth-rg" {
  value = azurerm_resource_group.rg[4].name
}