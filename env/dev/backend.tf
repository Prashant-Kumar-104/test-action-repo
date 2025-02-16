terraform {
  backend "azurerm" {
    resource_group_name  = "my-rg"
    storage_account_name = "mystorageaccount45357"
    container_name       = "dev-tfstate"
    key                  = "dev.terraform.tfstate"
  }
}