output "eventhub_name" {
  value = azurerm_eventhub.myhub[*].name
}
output "eventhub_id" {
  value = azurerm_eventhub.myhub[*].id
}
