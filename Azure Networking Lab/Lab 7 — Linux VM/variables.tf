variable "rg_name" {
  type = string
  default = "rg_linux-vm"
}
variable "rg_location" {
  type = string
  default = "Central India"
}
variable "Vnet_name" {
  type = string
  default = "VM_VNET"
}
variable "Subnet_name" {
  type = string
  default = "VM_SUBNET"
}
variable "pip_name" {
  type = string
  default = "Public_ip"
}
variable "nic_name" {
  type = string
  default = "VM_NIC"
}
variable "VM_name" {
  type = string
  default = "VM-LINUX"
}
variable "admin_usrname" {
  type = string
}
variable "admin_password" {
  type = string
}