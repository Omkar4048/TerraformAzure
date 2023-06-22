resource "azurerm_managed_disk" "disk" {
#  for_each = var.disk
  name                 = var.disk_name
  location             = var.location
  resource_group_name  = var.resource_group_name
  storage_account_type = var.account_type
  create_option        = var.create_option
  disk_size_gb         = var.disk_size_gb
  disk_encryption_set_id = var.disk_encryption_set_id
  public_network_access_enabled = var.public_network_access_enabled
  network_access_policy = var.network_access_policy
  tags = var.disk_tags
      lifecycle {
       ignore_changes = [tags,]
       
    }
}
resource "azurerm_virtual_machine_data_disk_attachment" "disk_attachment" {
  #for_each  = var.disk
  managed_disk_id    = resource.azurerm_managed_disk.disk.id
  virtual_machine_id = var.vm_id
  lun                = var.lun
  caching            = var.caching
}
