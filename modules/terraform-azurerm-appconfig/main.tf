resource "azurerm_app_configuration" "AppConfig" {
  name                       = var.app_config_name
  resource_group_name        = var.resource_group_name
  location                   = var.location
  sku                        = var.sku
  local_auth_enabled         = var.local_auth
  public_network_access      = var.public_access
  purge_protection_enabled   = var.purge_protection_enabled
  soft_delete_retention_days = var.retention_days
  identity {
   type = var.identity_type
   identity_ids = var.identity_ids
  }
  encryption {
   key_vault_key_identifier = var.key_vault_key_identifier
   identity_client_id       = var.identity_client_id
  }
  tags = var.app_tags
  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags,
    ]
  }
}
