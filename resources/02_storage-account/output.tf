output "sa1-name" {
  value = azurerm_storage_account.sa1.name
}

output "sa1-tier" {
  value = azurerm_storage_account.sa1.account_tier
}

output "sa1-replication-type" {
  value = azurerm_storage_account.sa1.account_replication_type
}

output "sa1c2-name" {
  value = azurerm_storage_container.sa1c2.name
}

output "container-access-type" {
  value = azurerm_storage_container.sa1c1.container_access_type
}

output "storage-account-connection-string1" {
  value = azurerm_storage_account.sa1.primary_connection_string
}