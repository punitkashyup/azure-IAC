resource "azurerm_resource_group" "rg" {
  name     = "${var.name}-${var.environment}"
  location = var.location
}

