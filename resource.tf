resource "azurerm_resource_group" "abhinav_rg" {
  name     = "${var.resource_name}-${local.my_local_var}-${local.sufix_for_resourse}"
  location = "${var.location}"
  tags = local.local_tags
}