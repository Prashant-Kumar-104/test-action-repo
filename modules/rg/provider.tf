terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.111.0"
    }
  }
   
}


provider "azurerm" {
  features {

  }

}

# backend "azurerm" {
#     resource_group_name  = "rg-pk"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
#     storage_account_name = "terraformlab004678"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
#     container_name       = "devtfstate"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
#     key                  = "devtfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  
