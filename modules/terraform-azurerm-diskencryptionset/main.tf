resource "azurerm_disk_encryption_set" "des" {
  name                = "${var.encryption_name}"
  resource_group_name = var.resource_group_name 
  location            = var.location
  key_vault_key_id    = var.key_vault_key_id
  identity {
    type = var.identity
  }
  tags = var.encryption_tags
  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}
