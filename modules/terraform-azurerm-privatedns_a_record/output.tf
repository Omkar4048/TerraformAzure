output "dns_record_id" {
  value = azurerm_private_dns_a_record.dns_record[*].id
}
output "dns_record_name" {
  value = azurerm_private_dns_a_record.dns_record[*].name
}