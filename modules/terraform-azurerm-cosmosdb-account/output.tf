output "cosmosdb_name" {
  value = azurerm_cosmosdb_account.cosmosdb[*].name
}

output "cosmosdb_id" {
  value = azurerm_cosmosdb_account.cosmosdb[*].id
}
