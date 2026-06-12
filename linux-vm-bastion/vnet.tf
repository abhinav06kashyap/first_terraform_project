resource "azurerm_virtual_network" "abhinav_vnet" {
  name                = "abhinav-network-vnet"
  location            = azurerm_resource_group.abhinav_rg.location
  resource_group_name = azurerm_resource_group.abhinav_rg.name
  address_space       = ["10.0.0.0/16"]
  tags = merge(local.local_tags,
      {
        unique_tag_for_vnet="This tag is defined for vnet."
      }
    )
}