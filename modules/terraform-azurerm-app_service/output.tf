output "service_app_id" {
  value = azurerm_windows_web_app.app_service[*].id
  description = "The ID of the App Service."
}
output "service_app_name" {
  value = azurerm_windows_web_app.app_service[*].name
  description = "The Name of the App Service."
}