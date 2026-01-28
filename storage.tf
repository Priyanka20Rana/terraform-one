resource "azurerm_storage_account" "stg" {
  name                     = "priyankastg123"
  location                 = azurerm_resource_group.resource.location
  resource_group_name      = azurerm_resource_group.resource.name
  account_tier             = "Standard"
  account_replication_type = "GRS"
}