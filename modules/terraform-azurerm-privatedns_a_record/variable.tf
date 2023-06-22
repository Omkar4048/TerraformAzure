variable "record_name" {
  type = string
  description = "The name of the DNS A Record. Changing this forces a new resource to be created."
}
variable "zone_name" {
  type = string
  description = "Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created."
}
variable "resource_group_name" {
  type = string
  description = "Specifies the resource group where the Private DNS Zone exists. Changing this forces a new resource to be"
}
variable "ttl" {
  type = number
  description = "The Time To Live (TTL) of the DNS record in seconds."
}
variable "records" {
  type = list
  description = "List of IPv4 Addresses."
}
