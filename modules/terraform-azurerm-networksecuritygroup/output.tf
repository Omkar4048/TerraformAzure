output "nsg_id" {
  value = azurerm_network_security_group.NSG_ICICI[*].id
}
output "nsg_name" {
  value = azurerm_network_security_group.NSG_ICICI[*].name
}
