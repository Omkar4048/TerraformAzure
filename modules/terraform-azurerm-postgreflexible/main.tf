resource "azurerm_postgresql_flexible_server" "postgreflexible" {
  name                   = var.postgre_server_name
  resource_group_name    = var.resource_group_name
  location               = var.location
  version                = var.postgre_version
  identity {
    type = var.identity_type
    identity_ids = var.identity_id
  }
  customer_managed_key {
    key_vault_key_id = var.key_id
    primary_user_assigned_identity_id = var.identity_id[0]
  }
  delegated_subnet_id    = var.subnet_id
  private_dns_zone_id    = var.dns_zone_id
  administrator_login    = var.username
  administrator_password = var.password
  zone                   = var.zone      #not available in SouthIndia
  backup_retention_days = var.retention_days
  storage_mb = var.storage_mb
  dynamic "high_availability" {
    for_each = var.high_availability
    content {
      mode = each.value["mode"]
      standby_availability_zone = each.value["standby_zone"]
    }
  }
  sku_name   = var.sku
  tags = var.postgre_tags
  lifecycle {
    ignore_changes = [tags]  
  }
}
