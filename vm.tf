resource "azurerm_linux_virtual_machine" "virtual_machine" {
  name                = "vm1"
  resource_group_name = azurerm_resource_group.resource.name
  location            = azurerm_resource_group.resource.location
size = "Standard_DS1_v2"

  admin_username      = "adminuser"
  admin_password      = "admin@123"
  disable_password_authentication = false
  network_interface_ids = [azurerm_network_interface.nic.id]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}