terraform {
  backend "azurerm" {
    resource_group_name   = "rg-terraform-state"
    storage_account_name  = "stterraformstate759"
    container_name        = "tfstate"
    key                   = "dev.terraform.tfstate"
    
  }
}