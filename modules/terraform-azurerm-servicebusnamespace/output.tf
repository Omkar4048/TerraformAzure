output "namespace_name" {
  value = azurerm_servicebus_namespace.icicisn[*].name
}
output "namespace_id" {
  value = azurerm_servicebus_namespace.icicisn[*].id
}
