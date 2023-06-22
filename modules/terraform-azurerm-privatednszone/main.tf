resource "azurerm_private_dns_zone" "dns_zone" {
  name                = var.dns_zone_name
  resource_group_name = var.resource_group_name
  lifecycle {
    ignore_changes = [
        tags
    ]
  }
}
