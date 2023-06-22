output "app_gateway_name" {
  value = azurerm_application_gateway.app_gateway[*].name
  description = "The Name of the Application Gateway."
}
output "app_gateway_id" {
  value = azurerm_application_gateway.app_gateway[*].id
  description = "The ID of the Application Gateway."
}
