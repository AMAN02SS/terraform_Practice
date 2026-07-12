terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "~> 4.0"
    }
  }
}
provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "DevOpsRG"
  location = "Central India"
}

# local-exec -------------------------------------------------------------------------------->
# resource "null_resource" "example" {
#   provisioner "local-exec" {
#     command = "echo Hello AMAN"
#   }
# }


# remote-exec -------------------------------------------------------------------------------->
# resource "azurerm_linux_virtual_machine" "vm" {
#     connection{
#      type = "ssh"
#      host = self.public_ip_address
#      user = "azureuser"  
#        private_key = file("id_rsa")
#   }

#   provisioner "remote-exec" {
#     inline = [
#       "sudo apt update",
#       "sudo apt install nginx -y"
#     ]
#   }
# }