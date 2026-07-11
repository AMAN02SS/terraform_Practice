locals {
  vm_size = var.enviornment == "prod" ? "Standard_D4s_v5" : "Standard_B2s"
  location = var.enviornment == "prod" ? "East US" : "Central India"
}