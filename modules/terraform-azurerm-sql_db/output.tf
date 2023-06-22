output "SQLdb_name" {
  value = azurerm_mssql_database.icicidb[*].name
}
output "SQLdb_id" {
  value = azurerm_mssql_database.icicidb[*].id
}
