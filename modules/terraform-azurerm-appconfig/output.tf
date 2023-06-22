output "app_config_name" {
  value = azurerm_app_configuration.AppConfig[*].name
  description = "The App Configuration Name."
}
output "app_config_id" {
  value = azurerm_app_configuration.AppConfig[*].id
  description = "The App Configuration ID."
}
