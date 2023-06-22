resource "azurerm_eventhub_consumer_group" "mygroup" {
  name                = var.consumer_group_name
  namespace_name      = var.namespace_name
  eventhub_name       = var.eventhub_name
  resource_group_name = var.rg_name
}
