output "mongodb_name" {
  value = azurerm_cosmosdb_mongo_database.mongodb[*].name
}

output "mongodb_id" {
  value = azurerm_cosmosdb_mongo_database.mongodb[*].id
}
