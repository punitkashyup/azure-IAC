resource "azurerm_log_analytics_workspace" "example" {
  name                = "${var.name}-law-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.law-sku
  retention_in_days   = var.law-retention_days
  daily_quota_gb      = var.daily_quota_gb
}
