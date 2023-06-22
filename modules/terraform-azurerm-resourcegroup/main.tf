resource "azurerm_resource_group" "RG_icici" {
    name        = "${var.resource_group_name}"
    location    = var.location
    tags        = var.tags #merge(var.tags,var.extra_tags)
    lifecycle {
      ignore_changes = [
        tags
      ]
    }
}
