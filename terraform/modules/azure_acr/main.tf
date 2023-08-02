resource "azurerm_container_registry" "acr" {
  name                = "${var.prefix}${var.project}${var.environment}acr${var.location_code}wordpress"
  resource_group_name = var.rg_name
  location            = var.location
  sku                 = "Standard"
  admin_enabled       = false
}