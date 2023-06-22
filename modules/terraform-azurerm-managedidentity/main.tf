resource "azurerm_user_assigned_identity" "user_identity" {
  name                = var.identity_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags = var.identity_tags
  lifecycle {
     ignore_changes = [tags]  
  }
}
