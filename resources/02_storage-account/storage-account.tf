resource "azurerm_storage_account" "sa1" {
  name                     = "${var.name}${var.environment}"
  resource_group_name      = var.resource_group_name #"${var.name}-${var.environment}"
  location                 = var.location
  account_tier             = var.storage-account-tier-standard
  account_replication_type = var.storage-account-replication-type-LRS
}


// Container //
resource "azurerm_storage_container" "sa1c1" {
  name                  = var.sa1c1-name
  storage_account_name  = azurerm_storage_account.sa1.name
  container_access_type = var.container-access-type-container
}

resource "azurerm_storage_container" "sa1c2" {
  name                  = var.sa1c2-name
  storage_account_name  = azurerm_storage_account.sa1.name
  container_access_type = var.container-access-type-container
}

