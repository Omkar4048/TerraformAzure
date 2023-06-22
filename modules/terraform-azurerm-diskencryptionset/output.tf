output "des_name" {
  value = azurerm_disk_encryption_set.des[*].name
}
output "des_id" {
  value = azurerm_disk_encryption_set.des[*].id
}
output "des_principal" {
  value = azurerm_disk_encryption_set.des[*].identity.0.principal_id
}