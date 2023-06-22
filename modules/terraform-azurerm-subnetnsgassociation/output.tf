output "nsgassociation_id" {
  value = azurerm_subnet_network_security_group_association.nsg_association[*].id
}
