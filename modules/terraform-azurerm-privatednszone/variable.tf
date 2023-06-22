  variable "dns_zone_name" {
    type = string
    description = "(Required) The name of the Private DNS Zone. Must be a valid domain name. Changing this forces a new resource to be created."
  }
  variable "resource_group_name" {
    type = string
    description = "(Required) Specifies the resource group where the resource exists. Changing this forces a new resource to be created. ex. for AKS: {subzone}.privatelink.{regionName}.azmk8s.io"
  }
