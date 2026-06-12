resource "azurerm_resource_group" "abhinav_rg" {
  name     = "${var.resource_name}-${local.my_local_var}-${local.sufix_for_resourse}"
  location = "eastus"
  tags = local.local_tags
}