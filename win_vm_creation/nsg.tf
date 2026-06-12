resource "azurerm_network_security_group" "abhinav_nsg" {
  name                = "abhinav-network-subnet-nsg-${local.sufix_for_resourse}"
  location            = azurerm_resource_group.abhinav_rg.location
  resource_group_name = azurerm_resource_group.abhinav_rg.name
  tags = local.local_tags
}

resource "azurerm_subnet_network_security_group_association" "abhinav_nsg_association" {
  subnet_id                 = azurerm_subnet.abhinav_subnet.id
  network_security_group_id = azurerm_network_security_group.abhinav_nsg.id
}

resource "azurerm_network_security_rule" "abhinav_nsg_rules" { 
  for_each                    = local.web_nsg_rule #it will iterate 3 times because we have 3 key value pair in the map
  name                        = "Allo-Port-${each.value}" 
  priority                    = each.key 
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*" 
  destination_port_range      = each.value 
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.abhinav_rg.name
  network_security_group_name = azurerm_network_security_group.abhinav_nsg.name
}