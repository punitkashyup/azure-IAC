
resource "azurerm_ai_services" "example" {
  name                  = "${var.name}-ai-${var.environment}"
  resource_group_name   = var.resource_group_name
  location              = var.ai-location
  sku_name              = var.ai-service_sku_name
  custom_subdomain_name = var.ai-service_account_name # it will be custom_subdomain_name.
  fqdns                 = []

  tags = {
  }
}
