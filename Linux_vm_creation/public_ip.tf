resource "azurerm_public_ip" "abhinav_vm_public_ip" {
  name = "abhinav_public_ip-${local.sufix_for_resourse}"
  resource_group_name = azurerm_resource_group.abhinav_rg.name
  location = azurerm_resource_group.abhinav_rg.location
  allocation_method = "Static"
  sku = "Standard"
  tags = local.local_tags
}