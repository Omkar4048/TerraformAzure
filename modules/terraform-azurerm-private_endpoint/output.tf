output "private_end_point_name" {
  value = azurerm_private_endpoint.ICICI_PE[*].name
}
output "private_end_point_id" {
  value = azurerm_private_endpoint.ICICI_PE[*].id
}
output "pe_private_service_connection" {
  value = azurerm_private_endpoint.ICICI_PE[*].private_service_connection
}
