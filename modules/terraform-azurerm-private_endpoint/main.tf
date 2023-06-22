resource "azurerm_private_endpoint" "ICICI_PE" {
  name                = var.pe_name
  location            = var.location
  resource_group_name = var.rg_name
  subnet_id           = var.subnet_id

  private_service_connection {
    name                           = var.service_name
    private_connection_resource_id = var.resource_id
    is_manual_connection           = var.manual_connection
    subresource_names = var.subresource_names
  }
  dynamic "ip_configuration" {
    for_each = var.ip_configuration
    content {
      name = ip_configuration.value["name"]
      private_ip_address = ip_configuration.value["ip_address"]
    }
  }
  private_dns_zone_group  {
    name  = var.dns_group_name
    private_dns_zone_ids = var.dnszoneid
  }
  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags,
    ]
  }
  tags = var.pe_tags
}
