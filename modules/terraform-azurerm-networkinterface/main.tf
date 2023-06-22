resource "azurerm_network_interface" "NIC" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.rg_name
  enable_accelerated_networking = true
  ip_configuration {
    name                          = var.ipconfig
    subnet_id                     = "${var.subnet_id}"
    private_ip_address_allocation = var.private_ip
    private_ip_address = var.private_ip_address
  }
  tags = var.nic_tags
  lifecycle {
      ignore_changes = [
        tags
      ]
    }
}
