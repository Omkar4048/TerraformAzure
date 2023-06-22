output "identity_name" {
  value = azurerm_user_assigned_identity.user_identity[*].name
}
output "identity_id" {
  value = azurerm_user_assigned_identity.user_identity[*].id
}
output "principal_id" {
  value = azurerm_user_assigned_identity.user_identity[*].principal_id
}
output "client_id" {
  value = azurerm_user_assigned_identity.user_identity[*].client_id
}
