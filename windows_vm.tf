/*
resource "azurerm_windows_virtual_machine" "ak-win-vm" {
  name                = "ak-win-machine"
  resource_group_name = azurerm_resource_group.abhinav_rg.name
  location            = azurerm_resource_group.abhinav_rg.location
  size                = "Standard_F2"
  admin_username      = "adminuser"
  admin_password      = "P@$$w0rd1234!"
  network_interface_ids = [
    azurerm_network_interface.abhinav_web_nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  } 
  custom_data = filebase64("${path.module}/ak_app/win_app.ps1")
}
*/