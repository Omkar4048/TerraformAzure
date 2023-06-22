resource "azurerm_mssql_server" "mysqlsvr" {
  name                         = lower(var.mssql_server_name)
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = var.sqlsvr_version
  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password
  public_network_access_enabled = var.public_enabled
  minimum_tls_version          = var.tls_version
  primary_user_assigned_identity_id = var.identityid
  identity {
  type         = var.identity_type
  identity_ids = [var.identityid]
  }
  tags                         = var.mssqlserver_tags
  lifecycle {
      ignore_changes = [
        tags
      ]
    }
}
resource "azurerm_mssql_server_transparent_data_encryption" "mydata" {
  server_id        = azurerm_mssql_server.mysqlsvr.id
  key_vault_key_id = var.key_id 
}
