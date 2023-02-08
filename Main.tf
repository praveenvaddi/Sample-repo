provider "azurerm" {

    features {}

}
resource "azurerm_resource_group" "rg" {
  name     = var.rgname
  location = var.location
}

resource "azurerm_storage_account" "Stor" {
  name                     = var.storageaccountname
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = var.SKU

  tags = {
    environment = "Dev"
  }
}