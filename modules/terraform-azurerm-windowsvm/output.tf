output "winvm_name" {
  value = azurerm_virtual_machine.windows_vm1[*].name
}
output "winvm_id" {
  value = azurerm_virtual_machine.windows_vm1[*].id
}
