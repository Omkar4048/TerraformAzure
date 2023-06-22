resource "azurerm_virtual_network" "ICICI_VNET" {
    name                = "${var.vnet_name}"
    location            = var.location
    resource_group_name = var.resource_group_name
    address_space       = var.address_space
    tags                = var.vnet_tags
    dns_servers         = var.dns_servers
    lifecycle {
      ignore_changes = [
        tags
      ]
    }
}
