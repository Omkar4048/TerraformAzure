variable "vnet_link_name" {
  type = string
  description = "(Required) The name of the Private DNS Zone Virtual Network Link. Changing this forces a new resource to be created."
}
variable "resource_group_name" {
  type = string
  description = "(Required) Specifies the resource group where the Private DNS Zone exists. Changing this forces a new resource to be created."
}
variable "dns_zone_name" {
  type = string
  description = "(Required) The name of the Private DNS zone (without a terminating dot). Changing this forces a new resource to be created."
}
variable "vnet_id" {
  type = string
  description = "(Required) The ID of the Virtual Network that should be linked to the DNS Zone. Changing this forces a new resource to be created."
}
