variable "resource_group_name" {
    type = string
    description = "(Required) The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created."
    validation {
        condition     = length(var.resource_group_name) > 4
        error_message = "Lenght of Resource Group Name Should be more than 4"
    }
    nullable = false
}
variable "location" {
    type = string
    description = " (Required) The location/region where the virtual network is created. Changing this forces a new resource to be created."
    nullable = false
}
variable "vnet_name" {
    type = string
    description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
    nullable = false
}
variable "address_space" {
    type = list(string)
    nullable = false
    description = "(Required) The address space that is used the virtual network. You can supply more than one address space."
}
variable "dns_servers" {
    type = list(string)
    default = []
    description = " List of IP addresses of DNS servers"
}
variable "vnet_tags" {
    type = map(any)
    description = "A map of tags to assign to the resource."
}
