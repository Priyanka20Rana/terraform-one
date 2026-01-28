resource "azurerm_network_interface" "nic" {
  name                = "nic1"
  location            = azurerm_resource_group.resource.location
  resource_group_name = azurerm_resource_group.resource.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = "/subscriptions/d35bdc6e-160c-43c0-8640-db1dcc21d896/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworks/vnet1/subnets/subnet1"
    private_ip_address_allocation = "Dynamic"
  }
}