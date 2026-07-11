# What is each.key?

### Terraform loops through every item.

```
resource "azurerm_resource_group" "rg" {

  for_each = toset(["Dev","Test","Prod"])

  name = each.key

  location = "Central India"

}
```

# Using Map

### This is how companies actually use it.
```
variable "resource_groups" {

default = {

dev="Central India"

test="East US"

prod="West Europe"

}

}
resource "azurerm_resource_group" "rg" {

for_each = var.resource_groups

name = each.key

location = each.value

}
```

## Easy to remember:

### Key = Left side

### Value = Right side