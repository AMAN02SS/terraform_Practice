variable "servers" {
    default = ["web01", "web02", "web03"] 
}

variable "enviornment" {
    default = {
        dev = "Central India"
        test = "East US"
        Prod = "West Europe"
    }
}

variable "vm" {
    default = {
        name = "DevVM"
        size = "Standard_B2s"
        location = "Central India"
    }
}