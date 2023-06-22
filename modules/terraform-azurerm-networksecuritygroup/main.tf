resource "azurerm_network_security_group" "NSG_ICICI" {
    name                = "${var.nsg_name}"
    location            = var.location
    resource_group_name = var.resource_group_name
    dynamic "security_rule" {
      for_each = merge(var.nsg_rules,var.nsg_rules_extra)
      content {
        name                       = security_rule.value["name"]
        priority                   = security_rule.value["priority"]
        direction                  = security_rule.value["direction"]
        access                     = security_rule.value["access"]
        protocol                   = security_rule.value["protocol"]
        source_port_range          = security_rule.value["source_port_range"]
        destination_port_range     = security_rule.value["destination_port_range"]
        destination_port_ranges    = security_rule.value["destination_port_ranges"]
        source_port_ranges          = security_rule.value["source_port_ranges"]
        source_address_prefix       = security_rule.value["source_address_prefix"]
        destination_address_prefix  = security_rule.value["destination_address_prefix"]
        source_address_prefixes      = security_rule.value["source_address_prefixes"]
        destination_address_prefixes = security_rule.value["destination_address_prefixes"]
        description                = security_rule.value["description"]
      }
    }
    tags = var.nsg_tags
    lifecycle {
    ignore_changes = [
      # Ignore changes to tags, e.g. because a management agent
      # updates these based on some ruleset managed elsewhere.
      tags,
    ]
  }
}
