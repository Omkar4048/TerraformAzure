output "subnet_id" {
  value = azurerm_subnet.Subnet2_ICICI[*].id
}
output "subnet_name" {
  value = azurerm_subnet.Subnet2_ICICI[*].name
}
