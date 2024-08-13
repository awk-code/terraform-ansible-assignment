output "linux_vm_hostnames" {
  value = module.linux_vms.linux_vm_hostnames
}

output "linux_vm_fqdns" {
  value = module.linux_vms.linux_vm_fqdns
}

output "linux_vm_private_ips" {
  value = module.linux_vms.linux_vm_private_ips
}

output "linux_vm_public_ips" {
  value = module.linux_vms.linux_vm_public_ips
}

output "windows_vm_hostnames" {
  value = module.windows_vms.windows_vm_hostnames
}

output "windows_vm_fqdns" {
  value = module.windows_vms.windows_vm_fqdns
}

output "windows_vm_private_ips" {
  value = module.windows_vms.windows_vm_private_ips
}

output "windows_vm_public_ips" {
  value = module.windows_vms.windows_vm_public_ips
}

output "vnet_name" {
  value = module.network.vnet_name
}

output "subnet_id" {
  value = module.network.subnet_id
}

output "storage_account_uri" {
  value = module.common.storage_account_uri
}

output "storage_account_name" {
  value = module.common.storage_account_name
}

output "log_analytics_workspace_name" {
  value = module.common.log_analytics_workspace_name
}

output "recovery_services_vault_name" {
  value = module.common.recovery_services_vault_name
}

output "load_balancer_name" {
  value = module.load_balancer.lb_name
}

output "database_name" {
  value = module.database.db_name
}

output "linux_vm_ids" {
  value = module.linux_vms.linux_vm_ids
}

output "windows_vm_ids" {
  value = module.windows_vms.windows_vm_ids
}

output "linux_availability_set_name" {
  value = module.linux_vms.linux_availability_set_name
}

output "windows_availability_set_name" {
  value = module.windows_vms.windows_availability_set_name
}