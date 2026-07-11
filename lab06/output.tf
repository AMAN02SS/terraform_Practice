output "servers" {
  value = var.servers[1]
}

output "enviornment" {
  value = var.enviornment.test
}

output "vm_name" {
  value = var.vm.name
  
}

output "vm_size" {
  value = var.vm.size
}