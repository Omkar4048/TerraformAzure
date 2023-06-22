resource "azurerm_container_registry" "myazacr" {
  name                = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  admin_enabled       = var.admin_enabled 
  public_network_access_enabled = false
  identity {
      type         = var.identitytype
      identity_ids = var.identityids
  } 
  encryption {
    enabled            = true
    key_vault_key_id   = var.keyid
    identity_client_id = var.clientid
  }
  dynamic "georeplications" {
    for_each = var.georeplications
    content {
      location                = georeplications.value["geolocation"]
      zone_redundancy_enabled = georeplications.value["var.zone_redundancy_enabled"]
      tags                    = var.acr_tags
    }
  }
  tags = var.acr_tags
  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags,
    ]
  }
}
