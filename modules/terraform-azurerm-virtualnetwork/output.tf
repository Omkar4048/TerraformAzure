output "vnet_id" {
  value = azurerm_virtual_network.ICICI_VNET[*].id
}
output "vnet_name" {
  value = azurerm_virtual_network.ICICI_VNET[*].name
}
