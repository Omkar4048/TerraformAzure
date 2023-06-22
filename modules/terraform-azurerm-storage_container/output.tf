output "container_name" {
  value = azurerm_storage_container.storage_container[*].name
}
output "container_id" {
  value = azurerm_storage_container.storage_container[*].id
}
