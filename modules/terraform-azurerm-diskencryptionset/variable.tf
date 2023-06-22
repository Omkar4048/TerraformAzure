variable "encryption_name" {
    type = string
    description = "(Required) The name of the Disk Encryption Set. Changing this forces a new resource to be created."
}
variable "resource_group_name" {
    type = string
    description = "(Required) Specifies the name of the Resource Group where the Disk Encryption Set should exist. Changing this forces a new resource to be created."
}
variable "location" {
    type = string
    description = "(Required) Specifies the Azure Region where the Disk Encryption Set exists. Changing this forces a new resource to be created."
}
variable "key_vault_key_id" {
    type = string
    description = "(Required) Specifies the URL to a Key Vault Key (either from a Key Vault Key, or the Key URL for the Key Vault Secret)."
}
variable "identity" {
    type = string
    default = "SystemAssigned"
    description = "(Required) The type of Managed Service Identity that is configured on this Disk Encryption Set. Possible values are SystemAssigned, UserAssigned, (SystemAssigned, UserAssigned to enable both)."
}
variable "encryption_tags" {
  type = map(any)
  default = {}
  description = "map of tags to be attached to resource"
}