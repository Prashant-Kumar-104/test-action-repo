# Provider Block
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.19.0"
    }
  }
  backend "azurerm" {
    resource_group_name   = "rg-terraform-remote-state"
    storage_account_name  = "stterraformstate759"
    container_name        = "tfstate"
    key                   = "dev.terraform.tfstate"
    
  }
}

provider "azurerm" {
  features {}
}
