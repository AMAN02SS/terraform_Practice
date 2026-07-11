output "dev" {
value = azurerm_resource_group.rg["dev"].name  
}
output "prod" {
value = azurerm_resource_group.rg["prod"].name  
}