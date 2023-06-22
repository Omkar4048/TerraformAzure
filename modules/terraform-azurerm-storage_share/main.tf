resource "azurerm_storage_share" "fileshare" {
 name                 = var.share_name
 storage_account_name = var.storage_account_name
 quota                = var.quota
 access_tier          = var.access_tier
}
