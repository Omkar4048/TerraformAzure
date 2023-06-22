resource "azurerm_mssql_database" "icicidb" {
  name                = var.sql_database_name
  server_id           = var.server_id
  create_mode         = var.create_mode
  max_size_gb         = var.max_size_gb
  read_scale          = var.read_scale
  sku_name            = var.sku_name
  zone_redundant      = var.zone_redundant
  tags                = var.sqldb_tags
  
  lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags,
    ]
  }
}
