output "application-insight-resource-id" {
  value = azurerm_application_insights.example.id
}

output "appplication-insight-connection-string" {
  value = azurerm_application_insights.example.connection_string
}


output "app_insights_instrumentation_key" {
  value = azurerm_application_insights.example.instrumentation_key
}
