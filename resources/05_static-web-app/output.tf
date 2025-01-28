output "static-web-app-name" {
  value = azurerm_static_web_app.swa1.name
}

output "static-web-app-location" {
  value = azurerm_static_web_app.swa1.location
}

output "swa1-default-host-name" {
  value = azurerm_static_web_app.swa1.default_host_name
}