terraform {
  required_version = ">=0.12"

  backend "azurerm" {}

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
}


module "policy_naming" {
  source   = "./modules/policies/naming"
  location = "uksouth"
}
