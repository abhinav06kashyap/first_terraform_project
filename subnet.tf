resource "azurerm_subnet" "abhinav_subnet" {
  name                = "${var.subnet_name}-${local.sufix_for_resourse}"
  resource_group_name = azurerm_resource_group.abhinav_rg.name
  virtual_network_name = azurerm_virtual_network.abhinav_vnet.name
  address_prefixes     = var.subnet_address_prefixes 
}