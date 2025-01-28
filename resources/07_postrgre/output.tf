output "psqlfs-admin-user-name" {
  value = azurerm_postgresql_flexible_server.example.administrator_login
}

output "psqlfs-admin-pw" {
  value = azurerm_postgresql_flexible_server.example.administrator_password
}

output "psqlfs-server-url" {
  value = azurerm_postgresql_flexible_server.example.fqdn
}


// Database // 
# output "database_name" {
#   value = azurerm_postgresql_flexible_server_database.example.name
# }

# output "server_fqdn" {
#   value = azurerm_postgresql_flexible_server.example.fqdn
# }

# output "server_port" {
#   value = azurerm_postgresql_flexible_server.example.port
# }

# output "connection_string" {
#   value = "postgresql://${var.username}:${var.password}@${azurerm_postgresql_flexible_server.example.fqdn}:${azurerm_postgresql_flexible_server.example.port}/${azurerm_postgresql_flexible_server_database.example.name}?sslmode=require"
#   sensitive = true
# }
