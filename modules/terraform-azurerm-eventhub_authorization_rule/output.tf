output "authorization_rule_name" {
  value = azurerm_eventhub_authorization_rule.myrule[*].name
}
output "authorization_rule_id" {
  value = azurerm_eventhub_authorization_rule.myrule[*].id
}
