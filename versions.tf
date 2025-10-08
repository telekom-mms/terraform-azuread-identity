terraform {
  required_providers {
    azurerm = {
      source  = "registry.terraform.io/hashicorp/azurerm"
      version = ">=4.40.0, <5.0"
    }
    azuread = {
      source  = "registry.terraform.io/hashicorp/azuread"
      version = ">=2.22, <3.0"
    }
  }
  required_version = ">=1.0"
}
