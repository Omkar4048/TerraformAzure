resource "azurerm_private_dns_a_record" "dns_record" {
  name                = lower(var.record_name)
  zone_name           = var.zone_name
  resource_group_name = var.resource_group_name
  ttl                 = var.ttl
  records             = var.records
  lifecycle {
    ignore_changes = [tags]  
  }
}
