resource "azurerm_eventhub_namespace" "myspace" {
  name                = var.namespace_name
  location            = var.location
  resource_group_name = var.rg_name
  sku                 = var.sku
  capacity            = var.capacity
  public_network_access_enabled = var.public_enabled
  zone_redundant = var.zone_redundant
  tags                = var.eventhub_tags
  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags,
    ]
  }
}
