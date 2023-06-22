output "mysql_flexible_id" {
  value = azurerm_mysql_flexible_server.mysql_flexible[*].id
}
output "mysql_flexible_name" {
  value = azurerm_mysql_flexible_server.mysql_flexible[*].name
}