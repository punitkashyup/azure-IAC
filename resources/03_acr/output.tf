output "acr-name" {
  value = azurerm_container_registry.acr.name
}

output "acr-login-server" {
  value = azurerm_container_registry.acr.login_server
}

output "acr-admin-username" {
  value = azurerm_container_registry.acr.admin_username
}

output "acr-admin-password" {
  value = azurerm_container_registry.acr.admin_password
}
