resource "azurerm_postgresql_flexible_server" "example" {
  name                          = "${var.name}-psqlfs-${var.environment}"
  resource_group_name           = var.resource_group_name
  location                      = var.location
  version                       = "12"
  delegated_subnet_id           = var.subnet_id # From networking module
  private_dns_zone_id           = var.private_dns_zone_id # From networking module
  public_network_access_enabled = false
  administrator_login           = var.psqlfs-admin-user-name
  administrator_password        = var.psqlfs-admin-pw
  zone                          = "1"

  storage_mb   = 32768
  storage_tier = "P4"

  sku_name = "B_Standard_B1ms"
}

resource "azurerm_postgresql_flexible_server_database" "example" {
  name      = "${var.name}-psqlfs-db-${var.environment}"
  server_id = azurerm_postgresql_flexible_server.example.id
  collation = "en_US.utf8"
  charset   = "utf8"

  lifecycle {
    prevent_destroy = false
  }
}