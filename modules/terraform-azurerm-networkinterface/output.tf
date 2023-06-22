output "nic_id" {
  value = azurerm_network_interface.NIC[*].id
}
output "nic_name" {
  value = azurerm_network_interface.NIC[*].name
}
