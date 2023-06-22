resource "azurerm_subnet_route_table_association" "rtassociation" {
  subnet_id      = var.subnet_id
  route_table_id = var.rt_id
}
