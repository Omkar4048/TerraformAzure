output "service_plan_name" {
  value = azurerm_service_plan.app_service_plan.name
  description = "The ID of the App Service Plan component."
}
output "service_plan_id" {
  value = azurerm_service_plan.app_service_plan.id
  description = "The Name of the App Service Plan component."
}