output "storage_name" {
  value = azurerm_storage_account.ICICIStorage[*].name
  description = "The Name of the Storage Account."
}
output "storage_id" {
  value = azurerm_storage_account.ICICIStorage[*].id
  description = "The ID of the Storage Account."
}
output "storage_access_key" {
  value = azurerm_storage_account.ICICIStorage[*].primary_access_key
  description = "The Access Key of the Storage Account."
  sensitive = true
}
# output "storage_blob_id" {
#   value = azurerm_storage_blob.storage_blob == {} ? null : azurerm_storage_blob.storage_blob[*].id
#   description = "The ID of the Storage Blob."
# }
# output "storage_container_id" {
#   value = azurerm_storage_container.storage_container == {} ? null : azurerm_storage_container.storage_container[*].id
#   description = "The ID of the Storage Container."
# }
# output "storage_queue_id" {
#   value = azurerm_storage_queue.storage_queue == {} ? null : azurerm_storage_queue.storage_queue[*].id
#   description = "The ID of the Storage Queue."
# }
# output "storage_share_id" {
#   value = azurerm_storage_share.fileshare == {} ? null : azurerm_storage_share.fileshare[*].id
#   description = "The ID of the Storage Share."
# }