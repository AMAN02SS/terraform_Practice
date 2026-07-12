# What is a Terraform Module?

### A reusable collection of Terraform configuration files that can be called multiple times to avoid code duplication and standardize infrastructure deployments.


# What is the difference between the Root Module and a Child Module?

## Root Module:

### The Terraform configuration from which you run terraform init, plan, and apply.

## Child Module:

### A module that is called by another module using the module block.