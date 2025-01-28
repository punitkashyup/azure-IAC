resource "azurerm_static_web_app" "swa1" {
  name                = "${var.name}-fe-${var.environment}"
  resource_group_name = var.resource_group_name
  location            = var.swa-location
  sku_tier            = var.swa-sku-tier # plan type
  sku_size            = "Standard"
}


# resource "azurerm_static_web_app" "swa2" {
#   name                = "${var.name}-swa-admin-${var.environment}"
#   resource_group_name = "${var.name}-${var.environment}"
#   location            = var.swa-location
#   sku_tier            = var.swa-sku-tier # plan type
# }


# Marketing website
resource "azurerm_static_web_app" "swa3" {
  name                = "${var.name}-marketing-${var.environment}"
  resource_group_name = "${var.name}-${var.environment}"
  location            = var.swa-location
  sku_tier            = var.swa-sku-tier # plan type
  sku_size            = "Standard"
}

