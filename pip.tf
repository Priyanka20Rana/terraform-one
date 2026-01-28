resource "azurerm_public_ip" "public" {
  name                    = "pip1"
  location                = azurerm_resource_group.resource.location
  resource_group_name     = azurerm_resource_group.resource.name
  allocation_method   = "Static"
  sku                 = "Standard"
}