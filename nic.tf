resource "azurerm_network_interface" "abhinav_web_nic" {
  for_each = var.multiple-instance-map
  name                = "${each.key}-ak-web-nic-${local.sufix_for_resourse}"
  location            = azurerm_resource_group.abhinav_rg.location
  resource_group_name = azurerm_resource_group.abhinav_rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.abhinav_subnet.id #nic required subnet 
    private_ip_address_allocation = "Dynamic"
    # public_ip_address_id          = azurerm_public_ip.abhinav_vm_public_ip.id #nic required public ip
  }
}