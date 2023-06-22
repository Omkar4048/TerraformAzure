resource "azurerm_role_assignment" "roleassign" {
  scope                = var.scope
  role_definition_name = var.role
  principal_id         = var.principalid  
}
