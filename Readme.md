# Terraform Practice

Learning Terraform from scratch.

Author: Aman Singh

# Terraform Master Revision Notes

> Based on the topics we covered together.

## 1. Infrastructure as Code (IaC)

-   Infrastructure managed using code.
-   Benefits: Version control, automation, consistency, repeatability.

## 2. Terraform Basics

-   Declarative language (HCL)
-   Multi-cloud support
-   Uses Providers

## 3. Terraform Workflow

``` bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy
```

## 4. Important Blocks

-   terraform
-   provider
-   resource
-   variable
-   output
-   locals
-   data

## 5. Providers

-   `required_providers`
-   Version pinning
-   `.terraform/`
-   `.terraform.lock.hcl`

## 6. Resources

Example:

``` hcl
resource "azurerm_resource_group" "rg" {
  name     = "DevOpsRG"
  location = "Central India"
}
```

## 7. Variables

-   string
-   number
-   bool
-   list
-   map
-   object
-   validation
-   sensitive

Variable precedence: 1. CLI 2. \*.tfvars 3. terraform.tfvars 4.
Environment variables 5. default

## 8. Locals

Reusable computed values.

## 9. Outputs

Expose values after apply.

## 10. Functions

-   upper()
-   lower()
-   length()
-   join()
-   split()
-   replace()
-   trimspace()
-   lookup()
-   merge()
-   concat()
-   flatten()
-   contains()
-   keys()
-   values()
-   basename()
-   dirname()
-   file()

## 11. Expressions

-   Conditional
-   For expressions

## 12. count

``` hcl
count = 3
```

## 13. for_each

``` hcl
for_each = toset(["web","app","db"])
```

Difference: - count → index - for_each → key/value

## 14. Dynamic Blocks

Generate nested blocks dynamically.

## 15. Meta Arguments

-   depends_on
-   lifecycle
-   create_before_destroy
-   prevent_destroy
-   ignore_changes

## 16. State

-   terraform.tfstate
-   state is Terraform's source of truth
-   Remote backend preferred

## 17. Backend

Azure Storage Account + Blob Container for shared state.

## 18. Modules

Reusable Terraform code.

## 19. Data Sources

Read existing infrastructure.

## 20. Workspaces

Separate dev/test/prod state.

## 21. Import

``` bash
terraform import
```

## 22. Project Structure

``` text
providers.tf
versions.tf
variables.tf
terraform.tfvars
locals.tf
main.tf
outputs.tf
backend.tf
modules/
```

## 23. Best Practices

-   Use modules
-   Remote backend
-   Pin provider versions
-   Don't commit state
-   Use meaningful names

## 24. Useful Commands

``` bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
terraform destroy
terraform output
terraform state list
terraform state show
terraform workspace list
terraform workspace new dev
```

## 25. Shell Scripting Topics Covered

-   Variables
-   Input
-   Conditions
-   Loops
-   Functions
-   Arguments
-   Exit codes
-   User management
-   Backup script
-   Log analyzer
-   Server health check
-   Project validator
-   Calculator
-   DevOps toolkit

## 26. Azure Topics Coming Next

1.  Cloud Fundamentals
2.  Azure Architecture
3.  Entra ID
4.  Subscription & Resource Groups
5.  ARM
6.  VNets
7.  NSG
8.  Storage
9.  VM
10. Load Balancer
11. Bastion
12. Key Vault
13. Monitoring
14. Landing Zone
15. Azure DevOps
16. Terraform on Azure

## Interview Tips

-   Explain *why* a feature exists, not just syntax.
-   Draw architecture.
-   Know Terraform workflow from memory.
-   Practice `plan` before `apply`.
