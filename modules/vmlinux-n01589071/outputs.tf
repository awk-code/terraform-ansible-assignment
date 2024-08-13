output "linux_vm_hostnames" {
  value = values(azurerm_linux_virtual_machine.virtual_machine)[*].name
}

output "linux_vm_fqdns" {
  value = values(azurerm_public_ip.public_ip)[*].fqdn
}

output "linux_vm_private_ips" {
  value = values(azurerm_network_interface.nic)[*].private_ip_address
}

output "linux_vm_public_ips" {
  value = { for key, pip in azurerm_public_ip.public_ip : key => pip.ip_address }
}

output "linux_vm_ids" {
  value = values(azurerm_linux_virtual_machine.virtual_machine)[*].id
}

output "linux_availability_set_name" {
  value = azurerm_availability_set.linux_avs.name
}