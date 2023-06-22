resource "azurerm_subnet" "Subnet2_ICICI" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.subnet_address
  service_endpoints    = var.service_endpoints
  delegation {
      name = "delegation"
      service_delegation {
        name    = var.delegation_name
        actions = var.delegation_action
      }
    }
}
