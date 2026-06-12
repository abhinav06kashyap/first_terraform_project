resource "azurerm_linux_virtual_machine" "ak_linux_vm" {
  name                = "linux-vm-${local.sufix_for_resourse}"
  resource_group_name = azurerm_resource_group.abhinav_rg.name
  location            = azurerm_resource_group.abhinav_rg.location
  size                = var.instance-type["test"]
  admin_username      = "azureuser"
  network_interface_ids = [
    azurerm_network_interface.abhinav_web_nic.id,
  ]

  admin_ssh_key {
    username   = "azureuser"
    public_key = file("${path.module}/ssh-keys/terraform-azure.pem.pub")
  }

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
  custom_data = filebase64("${path.module}/ak_app/new_app.sh") #it will read the content of the file and convert it to base64 encoded string and pass it to the custom data
}
