output "permission_id" {
  value = azurerm_key_vault_access_policy.key_vault_access_policy[*].id
  description = "Key Vault Access Policy ID."
}