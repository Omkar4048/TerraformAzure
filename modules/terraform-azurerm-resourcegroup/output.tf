output "rg_name" {
  value = azurerm_resource_group.RG_icici[*].name
}
output "rg_id" {
  value = azurerm_resource_group.RG_icici[*].id
}
