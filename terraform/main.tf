terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
    }
  }
}
provider "azurerm" {
    features {
 }
  
}

resource "azurerm_resource_group" "firstresoursegroup" {
  name     = "myResourceGroup"
  location = "eastus2"
}

resource "azurerm_storage_account" "teststorageaccount" {
  name                     = "storageaccount2545"
  resource_group_name      = azurerm_resource_group.firstresoursegroup.name
  location                 = "eastus2"
  account_tier             = "Standard"
  account_replication_type = "GRS"
  enable_https_traffic_only = true

}