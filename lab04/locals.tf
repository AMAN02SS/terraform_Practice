locals {
  project     = "ABC"
  enviornment = "Dev"

  prefix = "${local.project}-${local.enviornment}"
}