output "resource_group_name" {
  description = "showing the resource group"
  value = azurerm_resource_group.abhinav_rg.name
}

# output "nsg_output" {
#   description = "Here we are giving the nsg port loop data."
#   value = azurerm_network_security_group.abhinav_nsg.security_rule[0]
# }

output "public_ip" {
  description = "showing the public ip"
  value = azurerm_public_ip.abhinav_vm_public_ip.ip_address
}

# output "linux_vm_public_ip" {
#   description = "showing the public ip address of the vm"
#   value = azurerm_linux_virtual_machine.ak_linux_vm.ip_address
# }

output "win_vm_public_ip" {
  description = "showing the public ip address of the vm"
  value = azurerm_windows_virtual_machine.ak-win-vm.public_ip_address
}