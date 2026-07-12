module "dev" {
    source = "../../child_module/azurerm_resource_group"
    rg_name = var.dev_rg_name
    rg_location = var.dev_rg_location
}