output "storage_queue_name" {
  value = azurerm_storage_queue.storage_queue[*].name
}
output "storage_queue_id" {
  value = azurerm_storage_queue.storage_queue[*].id
}
