resource "azurerm_application_insights" "example" {
  name                = "${var.name}-app-insight-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  workspace_id        = var.law-id
  application_type    = var.application_type
}

