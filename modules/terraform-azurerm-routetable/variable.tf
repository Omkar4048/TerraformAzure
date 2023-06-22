variable "rt_name" {
  type = string
  description = "(Required) The name of the route table. Changing this forces a new resource to be created."
}
variable "location" {
  type = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}
variable "resource_group_name" {
  type = string
  description = "(Required) The name of the resource group in which to create the route table. Changing this forces a new resource to be created."
}
variable "routes" {
  type = map(object({
    name                       = string
    address_prefix             = string
    next_hop_type              = string
    next_hop_in_ip_address     =  string
  }))
  description = "List of objects representing routes. Each object accepts the arguments documented below."
}
variable "rt_tags" {
    type = map(any)
    description = "A mapping of tags to assign to the resource."
}
variable "default_routes" {
  type = map(object({
    name                       = string
    address_prefix             = string
    next_hop_type              = string
    next_hop_in_ip_address     =  string
  }))
  description = "name - (Required) The name of the route. address_prefix - (Required) The destination to which the route applies. Can be CIDR (such as 10.1.0.0/16) or Azure Service Tag (such as ApiManagement, AzureBackup or AzureMonitor) format. next_hop_type - (Required) The type of Azure hop the packet should be sent to. Possible values are VirtualNetworkGateway, VnetLocal, Internet, VirtualAppliance and None. next_hop_in_ip_address - (Optional) Contains the IP address packets should be forwarded to. Next hop values are only allowed in routes where the next hop type is VirtualAppliance."
  default = {
  }
}
