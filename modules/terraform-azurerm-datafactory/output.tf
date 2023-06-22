output "adf_name" {
  value = azurerm_data_factory.myadf[*].name
}
output "adf_id" {
  value = azurerm_data_factory.myadf[*].id
}
