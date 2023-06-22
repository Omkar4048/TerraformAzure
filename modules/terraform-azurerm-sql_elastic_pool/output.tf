output "SQLpool_name" {
  value = azurerm_mssql_elasticpool.mysqlpool[*].name
}
output "SQLpool_id" {
  value = azurerm_mssql_elasticpool.mysqlpool[*].id
}
