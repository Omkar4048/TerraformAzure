resource "azurerm_servicebus_namespace" "icicisn" {
  name                = var.servicebus_namespace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  public_network_access_enabled  = false
  sku                 = var.sku
  capacity            = var.capacity
  tags                  = var.namespace_tags
  lifecycle {
      ignore_changes = [
        tags
      ]
    }
}
