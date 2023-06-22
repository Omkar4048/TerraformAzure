resource "azurerm_storage_queue" "storage_queue" {
 name                 = var.storage_queue
 storage_account_name = var.storage_account_name
} 
