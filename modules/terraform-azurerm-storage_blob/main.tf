resource "azurerm_storage_blob" "storage_blob" {
 name                   = var.storage_blob_name
 storage_account_name   = var.storage_account_name
 storage_container_name = var.storage_container_name
 type                   = var.blob_type
 source                 = var.sourcefilename
 access_tier            = var.access_tier
} 

