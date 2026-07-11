output "upper_project" {
     value = upper("${local.project}-${local.env}-rg")
}

output "lower_project" {
    value = lower("${local.project}-${local.env}-rg")
}

output "project_length" {
  value = length("${local.project}-${local.env}-rg")
}

output "resource_group_name" {
  value = azurerm_resource_group.devops_prod_rg.name
}