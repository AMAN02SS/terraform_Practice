output "vm_size" {
  value = var.enviornment == "test" ? "Standard_B2s" : "Standard_D4s_v5"
}
output "location" {
  value = var.enviornment == "test" ? "Central India" : "East US"
}