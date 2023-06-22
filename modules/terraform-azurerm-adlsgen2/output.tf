output "adls_name" {
  value = azurerm_storage_data_lake_gen2_filesystem.adls_storage[*].name
}
output "adls_id" {
  value = azurerm_storage_data_lake_gen2_filesystem.adls_storage[*].id
}