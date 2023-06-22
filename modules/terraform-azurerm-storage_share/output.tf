output "storage_share_name" {
  value = azurerm_storage_share.fileshare[*].name
}
output "storage_share_id" {
  value = azurerm_storage_share.fileshare[*].id
}
