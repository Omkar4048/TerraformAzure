output "eventhub_group_name" {
  value = azurerm_eventhub_consumer_group.mygroup[*].name
}
output "eventhub_group_id" {
  value = azurerm_eventhub_consumer_group.mygroup[*].id
}
