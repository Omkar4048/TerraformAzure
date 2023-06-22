output "roleassign_name" {
  value = azurerm_role_assignment.roleassign[*].name
}
output "roleassign_id" {
  value = azurerm_role_assignment.roleassign[*].id
}
