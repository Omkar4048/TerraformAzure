output "mssql_server_name" {
  value = azurerm_mssql_server.mysqlsvr[*].name
}
output "mssql_server_id" {
  value = azurerm_mssql_server.mysqlsvr[*].id
}
