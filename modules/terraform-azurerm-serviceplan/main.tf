resource "azurerm_service_plan" "app_service_plan" {
  name                = var.service_plan_name
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = var.os_type
  sku_name            = var.sku_name
  per_site_scaling_enabled = var.per_site_scaling_enabled
  tags = var.service_plan_tags
}