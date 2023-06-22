output "eventhub_namespace_name" {
  value = azurerm_eventhub_namespace.myspace[*].name
}
output "eventhub_namespace_id" {
  value = azurerm_eventhub_namespace.myspace[*].id
}
