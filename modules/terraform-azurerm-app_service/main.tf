resource "azurerm_windows_web_app" "app_service" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id = var.service_plan_id

  dynamic "site_config" {
    for_each = var.site_config
    content {
      application_stack {
        current_stack = site_config.value["current_stack"]
        dotnet_version = site_config.value["dotnet_version"]
      }
    }
  }
  identity {
    type = var.identity_type
    identity_ids = var.identity_ids
  }
  app_settings = var.app_settings
  dynamic "connection_string" {
    for_each = var.connection_string
    content {
      name  = connection_string.value["name"]
      type  = connection_string.value["type"]
      value = connection_string.value["value"]
    }
  }
  tags = var.app_service_tags
}