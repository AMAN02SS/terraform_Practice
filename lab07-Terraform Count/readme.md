# count

### Terraform can repeat a resource automatically.

```
resource "azurerm_resource_group" "rg" {

  count = 3

  name = "DevOpsRG-${count.index}"

  location = "Central India"

}
```

