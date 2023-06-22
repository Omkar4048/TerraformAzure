output "lock_id" {
  value = azurerm_management_lock.lock[*].id
  description = "The ID of the Management Lock"
}