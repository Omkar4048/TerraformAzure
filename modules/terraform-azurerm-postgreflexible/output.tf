output "postgreout_name" {
  value = azurerm_postgresql_flexible_server.postgreflexible[*].name
}
output "postgreout_id" {
  value = azurerm_postgresql_flexible_server.postgreflexible[*].id
}
