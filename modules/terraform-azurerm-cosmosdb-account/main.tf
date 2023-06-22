resource "azurerm_cosmosdb_account" "cosmosdb" {
  name                = var.cosmosdb_account_name
  location            = var.location
  resource_group_name = var.resource_group_name
  offer_type          = var.offer_type 
  kind                = var.kind 
  enable_automatic_failover = var.enable_automatic_failover
  enable_free_tier  = var.enable_free_tier
  mongo_server_version  = var.mongo_server_version 
  is_virtual_network_filter_enabled = var.is_virtual_network_filter_enabled
  public_network_access_enabled = false
  enable_multiple_write_locations = var.enable_multiple_write_locations
  key_vault_key_id = var.key_vault_key_id                                  #"https://ibcikms1kv01.vault.azure.net/keys/IBCI-TFE-UAT-KMS01"
    
  consistency_policy {
    consistency_level       = var.consistency_level
    max_interval_in_seconds = var.max_interval_in_seconds
    max_staleness_prefix    = var.max_staleness_prefix
  }

   dynamic "geo_location" {
    for_each = var.geo_locations
    content {
      location          = geo_location.value["geo_location"]
      failover_priority = geo_location.value["failover_priority"]
      zone_redundant    = geo_location.value["zone_redundant"]
    }
  }
  dynamic "backup" {
    for_each = var.backup_enabled == true ? [1] : []
    content {
      type                = title(var.backup_type)
      interval_in_minutes = lower(var.backup_type) == "periodic" ? var.backup_interval : ""
      retention_in_hours  = lower(var.backup_type) == "periodic" ? var.backup_retention : ""
      storage_redundancy  = lower(var.backup_type) == "periodic" ? var.backup_redundancy  : ""
    }
  }
 tags = var.cosmosdb_tags
 lifecycle {
 ignore_changes = [
    # Ignore changes to tags, e.g. because a management agent
    # updates these based on some ruleset managed elsewhere.
     tags,
    ]
  }
}
