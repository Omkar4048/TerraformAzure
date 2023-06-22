resource "azurerm_mysql_flexible_server" "mysql_flexible" {
  name                   = lower(var.mysqlflexible_server_name)
  resource_group_name    = var.resource_group_name
  location               = var.location
  administrator_login    = var.login
  administrator_password = var.password
  backup_retention_days  = var.retention_days
  delegated_subnet_id    = var.subne_id
  private_dns_zone_id    = var.pdnszone_id
  sku_name               = var.sku
  zone = var.zone
  version = var.mysql_version
  identity {
    type = var.identity_type
    identity_ids = var.identity_ids
  }
  customer_managed_key {
    key_vault_key_id = var.key_vault_key_id
    primary_user_assigned_identity_id = var.identity_ids[0]
  }
  dynamic "high_availability" {
    for_each = var.high_availability
    content {
      mode = each.value["mode"]
      standby_availability_zone = each.value["standby_zone"]
    }
  }
  storage {
    iops = var.iops
    size_gb = var.size_gb
  }
  tags = var.mysql_tags
}