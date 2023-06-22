resource "azurerm_private_dns_zone_virtual_network_link" "vnet_link" {
  name                  = var.vnet_link_name
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = var.dns_zone_name
  virtual_network_id    = var.vnet_id
  lifecycle {
    ignore_changes = [
        tags
    ]
  }
}
