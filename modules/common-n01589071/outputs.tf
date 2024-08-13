output "storage_account_uri" {
  value = azurerm_storage_account.storage_account.primary_blob_endpoint
}

output "log_analytics_workspace_id" {
  value = azurerm_log_analytics_workspace.log_analytics_workspace.id
}

output "recovery_services_vault_id" {
  value = azurerm_recovery_services_vault.recovery_vault.id
}

output "storage_account_name" {
  value = azurerm_storage_account.storage_account.name
}

output "log_analytics_workspace_name" {
  value = azurerm_log_analytics_workspace.log_analytics_workspace.name
}

output "recovery_services_vault_name" {
  value = azurerm_recovery_services_vault.recovery_vault.name
}