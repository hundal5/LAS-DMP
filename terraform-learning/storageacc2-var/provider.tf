terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
    }
  }
  
  backend "azurerm" {
    resource_group_name  = "cicdrgs"
    storage_account_name = "cicdrgsaccount"
    container_name       = "cicdrgsacont"
    key                  = "terraformtest.tfstate"
  }
}

provider "azurerm" {
    features {
 }
  
}