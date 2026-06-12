resource "azurerm_subnet" "ak-bastion_subnet" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = azurerm_resource_group.abhinav_rg.name
  virtual_network_name = azurerm_virtual_network.abhinav_vnet.name
  address_prefixes     = ["10.0.2.0/27"]
}

resource "azurerm_public_ip" "ak-bastion_public_ip" {
  name                = "bastionpublicip"
  location            = azurerm_resource_group.abhinav_rg.location
  resource_group_name = azurerm_resource_group.abhinav_rg.name
  allocation_method   = "Static"
  sku                 = "Standard"
}

resource "azurerm_bastion_host" "ak-bastion_host" {
  name                = "abhinav-bastion"
  location            = azurerm_resource_group.abhinav_rg.location
  resource_group_name = azurerm_resource_group.abhinav_rg.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.ak-bastion_subnet.id
    public_ip_address_id = azurerm_public_ip.ak-bastion_public_ip.id
  }
}