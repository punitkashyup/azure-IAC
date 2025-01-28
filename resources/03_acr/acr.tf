# import {
#   to = azurerm_container_registry.acr
#   id = "/subscriptions/97550fb7-8bb4-4203-ae5a-f7ea8ec7896e/resourceGroups/interview-ai-dev/providers/Microsoft.ContainerRegistry/registries/interviewaidevacr"
# }

resource "azurerm_container_registry" "acr" {
  name                = "${var.name}acr${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.acr-sku
  admin_enabled       = var.acr-admin-enabled
}
