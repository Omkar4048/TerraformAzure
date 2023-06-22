resource "azurerm_mssql_elasticpool" "mysqlpool" {
  name                = var.sql_elasticpool_name
  resource_group_name = var.resource_group_name
  location            = var.location
  server_name         = var.mssql_server_name
  license_type        = var.license_type
  max_size_gb         = var.max_size_gb  
    sku {
    name     = var.sku_name
    tier     = var.tier
#    family   = var.family
    capacity = var.capacity
  }
  per_database_settings {
    min_capacity = var.min_capacity
    max_capacity = var.max_capacity
  }
  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags,
    ]
  }
  tags         = var.sqlpool_tags
}
