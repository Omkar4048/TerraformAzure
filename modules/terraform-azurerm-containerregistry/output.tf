output "acr_id" {
  value = azurerm_container_registry.myazacr[*].id
}
output "acr_name" {
  value = azurerm_container_registry.myazacr[*].name
}
