variable "disk_name" {
  type = string
  description = "Specifies the name of the Managed Disk. Changing this forces a new resource to be created."
}
variable "location" {
  type = string
  description = "Specified the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}
variable "resource_group_name" {
  type = string
  description = "The name of the Resource Group where the Managed Disk should exist. Changing this forces a new resource to be created."
}
variable "account_type" {
  type = string
  description = "The type of storage to use for the managed disk. Possible values are Standard_LRS, StandardSSD_ZRS, Premium_LRS, PremiumV2_LRS, Premium_ZRS, StandardSSD_LRS or UltraSSD_LRS."
}
variable "create_option" {
  type = string
  description = "The method to use when creating the managed disk. Changing this forces a new resource to be created. Possible values include:"
}
variable "disk_size_gb" {
  type = number
  description = "(Optional, Required for a new managed disk) Specifies the size of the managed disk to create in gigabytes. If create_option is Copy or FromImage, then the value must be equal to or greater than the source's size. The size can only be increased."
}
variable "disk_tags" {
  type = map(any)
  description = "map of tags for disk."
}
variable "vm_id" {
  type = string
  description = "id of virtual machine to attach disk."
}
# variable "disk" {
#   description = "disk attach"
# #   type = map(object({
# #     vm_id = string
# #     lun = string
# #     caching = string
# #   }))
# }
variable "lun" {
  type = string
  description = "The Logical Unit Number of the Data Disk, which needs to be unique within the Virtual Machine. Changing this forces a new resource to be created."
}
variable "caching" {
  type = string
  description = "Specifies the caching requirements for this Data Disk. Possible values include None, ReadOnly and ReadWrite."
}
variable "disk_encryption_set_id" {
  type = string
  description = "The ID of a Disk Encryption Set which should be used to encrypt this Managed Disk. Conflicts with secure_vm_disk_encryption_set_id..The Disk Encryption Set must have the Reader Role Assignment scoped on the Key Vault - in addition to an Access Policy to the Key Vault"
}
variable "public_network_access_enabled" {
  default = false
  type = bool
  description = "Whether it is allowed to access the disk via public network. Defaults to true." 
}
variable "network_access_policy" {
  type = string
  default = "DenyAll"
  description = "Policy for accessing the disk via network. Allowed values are AllowAll, AllowPrivate, and DenyAll."
}
