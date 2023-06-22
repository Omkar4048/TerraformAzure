resource "azurerm_eventhub" "myhub" {
  name                = var.eventhub_name
  namespace_name      = var.namespace_name
  resource_group_name = var.rg_name
  partition_count     = var.partition_count 
  message_retention   = var.message_retention 
}
