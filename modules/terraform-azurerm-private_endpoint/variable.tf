variable "pe_name" {
  type = string
  description = "Specifies the Name of the Private Endpoint. Changing this forces a new resource to be created."
}
variable "rg_name" {
  type = string
  description = "Specifies the Name of the Resource Group within which the Private Endpoint should exist. Changing this forces a new resource to be created."
}
variable "location" {
  type = string
  description = "The supported Azure location where the resource exists. Changing this forces a new resource to be created."
}
variable "subnet_id" {
  type = string
  description = "The ID of the Subnet from which Private IP Addresses will be allocated for this Private Endpoint. Changing this forces a new resource to be created."
}
variable "service_name" {
  type = string
  description = "Specifies the Name of the Private Service Connection. Changing this forces a new resource to be created."
}
variable "resource_id" {
  type = string
  description = "The ID of the Private Link Enabled Remote Resource which this Private Endpoint should be connected to. One of private_connection_resource_id"
}
variable "manual_connection" {
  type = string
  default = false
  description = "Does the Private Endpoint require Manual Approval from the remote resource owner? Changing this forces a new resource to be created."
}
variable "subresource_names" {
  type = list
  description = "A list of subresource names which the Private Endpoint is able to connect to. subresource_names corresponds to group_id. ex. mssql - sqlServer, Databrick - databricks_ui_api, DataFactory - dataFactory, keyvault - vault"
}

variable "dns_group_name" {
  type = string
  description = "(Required) Specifies the Name of the Private DNS Zone Group."
}

variable "dnszoneid" {
  #type = list
  description = "(Required) Specifies the list of Private DNS Zones to include within the private_dns_zone_group."
}
variable "ip_configuration" {
  type = map(object({
    name = string
    ip_address = string
  }))
  default = {}
  description = "Specifies the Name of the IP Configuration. Changing this forces a new resource to be created."
}

variable "pe_tags" {
  type = map(any)
  description = "A mapping of tags to assign to the resource."
}
