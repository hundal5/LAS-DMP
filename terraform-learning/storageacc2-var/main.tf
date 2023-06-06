resource "azurerm_resource_group" "rg1" {
  name     = var.azurerm_resource_name
  location = var.location
}

resource "azurerm_storage_account" "sa1" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
  
}