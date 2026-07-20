variable "azure_subnet" {
    type = map(any)
    default = {
    "Web" = "10.0.1.0/24"
    "App" = "10.0.2.0/24"
    "DB" = "10.0.3.0/24" 
    }  
}