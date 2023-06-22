variable "resource_group_name" {
    type = string
    description = "(Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. Should be more than 4 AlphaNumeric and with IBCI/IBSI Prefix"
    validation {
        condition     = length(var.resource_group_name) > 4
        error_message = "Lenght of Resource Group Name Should be more than 4."
    }
    nullable = false
}
variable "location" {
    type = string
    description = "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
    nullable = false
}
variable "tags" {
    type = map(any)
    description = "This are Application Specific Tags to be passed by User from module"
    nullable = false
}
