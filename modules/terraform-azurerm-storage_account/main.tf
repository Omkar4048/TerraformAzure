resource "azurerm_storage_account" "ICICIStorage" {
  name                = lower(var.storageaccountname)
  resource_group_name = var.rg_name
  location                 = var.location
  account_tier             = var.tier
  account_replication_type = var.replication 
  account_kind = var.account_kind
  public_network_access_enabled = var.public_enabled
  allow_nested_items_to_be_public = var.nested_public
  shared_access_key_enabled = var.shared_access_key_enabled 
  nfsv3_enabled = var.nfsv3_enabled
  is_hns_enabled = var.is_hns_enabled
  dynamic "network_rules" {
    for_each = var.network_rules
  	  content {
        default_action             = network_rules.value["action"]
        ip_rules                   = network_rules.value["ip_rules"]
        virtual_network_subnet_ids = network_rules.value["subnet_ids"]   #["/subscriptions/fd537a95-b85a-458e-90cf-4256586d77b0/resourceGroups/ICICIBANKNETWORK-RG/providers/Microsoft.Network/virtualNetworks/ICICIBANKVNET/subnets/INFRA-TEST-FUNC"]
      }
    }
  identity {
    type = var.identity_type
    identity_ids = var.identity_ids
  }
  tags = var.storage_tags
  lifecycle {
      ignore_changes = [
        tags
      ]
    }
}
resource "azurerm_storage_container" "storage_container" {
  for_each = var.container
   name                  = lower(each.value["storage_container_name"])
   storage_account_name  = resource.azurerm_storage_account.ICICIStorage.name
   container_access_type = each.value["container_access"]
}
resource "azurerm_storage_blob" "storage_blob" {
  for_each = var.blob
   name                   = lower(each.value["storage_blob_name"])
   storage_account_name   = resource.azurerm_storage_account.ICICIStorage.name
   storage_container_name = resource.azurerm_storage_container.storage_container["${each.key}"].name
   type                   = each.value["blob_type"]
   source                 = each.value["sourcefilename"]
   access_tier            = each.value["access_tier"]
} 
resource "azurerm_storage_queue" "storage_queue" {
  for_each = var.queue
   name                 = lower(each.value["queue_name"])
   storage_account_name = resource.azurerm_storage_account.ICICIStorage.name
} 
resource "azurerm_storage_share" "fileshare" {
  for_each = var.fileshare
   name                 = lower(each.value["share_name"])
   storage_account_name = resource.azurerm_storage_account.ICICIStorage.name
   enabled_protocol = each.value["enabled_protocol"]
   quota                = each.value["quota"]
   access_tier          = each.value["access_tier"]
}
resource "azurerm_storage_account_customer_managed_key" "storage_encryption" {
  storage_account_id = resource.azurerm_storage_account.ICICIStorage.id
  key_vault_id       = var.key_vault_id
  key_name           = var.key_name
}
