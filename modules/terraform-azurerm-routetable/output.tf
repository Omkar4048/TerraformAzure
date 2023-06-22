output "rt_id" {
  value = azurerm_route_table.RT_ICICI[*].id
}
output "rt_name" {
  value = azurerm_route_table.RT_ICICI[*].name
}
