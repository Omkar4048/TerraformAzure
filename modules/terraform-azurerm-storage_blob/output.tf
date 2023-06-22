output "storage_blob_name" {
  value = azurerm_storage_blob.storage_blob[*].name
}
output "storage_blob_id" {
  value = azurerm_storage_blob.storage_blob[*].id
}
