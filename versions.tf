terraform {
  required_providers {
    azurerm = {
      source  = "registry.terraform.io/hashicorp/azurerm"
      version = ">=3.6, <4.0"
    }
    azuread = {
      source  = "registry.terraform.io/hashicorp/azuread"
      version = ">=4.40.0, <5.0"
    }
  }
  required_version = ">=1.0"
}
