output "vnet_link_name" {
  value = azurerm_private_dns_zone_virtual_network_link.vnet_link[*].name
}
output "vnet_link_id" {
  value = azurerm_private_dns_zone_virtual_network_link.vnet_link[*].id
}
