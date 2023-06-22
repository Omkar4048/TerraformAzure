resource "azurerm_application_insights" "example" {
  name                = var.insight 
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = var.application_type
  tags  = var.tags
}