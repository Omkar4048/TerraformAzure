resource "azurerm_storage_data_lake_gen2_filesystem" "adls_storage" {
  name               = lower(var.adls_name)
  storage_account_id = var.storage_account_id
  dynamic "ace" {
    for_each = var.ace
    content {
      type = ace.value["type"]
      id = ace.value["id"]
      permissions = ace.value["permissions"]
    }
  }
  properties = {
    hello = "aGVsbG8="
  }
}
