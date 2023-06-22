resource "azurerm_route_table" "RT_ICICI" {
  name                          = var.rt_name
  location                      = var.location
  resource_group_name           = var.resource_group_name
  disable_bgp_route_propagation = true
  dynamic "route" {
    for_each = merge(var.default_routes,var.routes)
    content {
      name           = route.value["name"]
      address_prefix = route.value["address_prefix"]
      next_hop_type  = route.value["next_hop_type"]
      next_hop_in_ip_address = route.value["next_hop_in_ip_address"]
    }
  }
  tags = var.rt_tags
  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags,
    ]
  }
}
