variable "imageid" {
    type = string
    description = "Specifies the ID of the Custom Image which the Virtual Machine should be created from. Changing this forces a new resource to be created."
}
variable "vm_name" {
    description = "(Required) Specifies the name of the Virtual Machine. Changing this forces a new resource to be created."
}
variable "nic_id" {
    description = "(Required) A list of Network Interface IDs which should be associated with the Virtual Machine."
}
variable "resource_group_name" {
    description = "(Required) Specifies the name of the Resource Group in which the Virtual Machine should exist. Changing this forces a new resource to be created."
}
variable "location" {
    description = "(Required) Specifies the Azure Region where the Virtual Machine exists. Changing this forces a new resource to be created."
}
variable "vmsize" {
    description = "(Required) Specifies the size of the Virtual Machine. See also Azure VM Naming Conventions."
}
variable "username" {
    description = "(Required) Specifies the name of the local administrator account."
}
variable "password" {
    description = "The password associated with the local administrator account."
    sensitive   = true
}
variable "create_option" {
    default = "FromImage"
    description = "(Required) Specifies how the data disk should be created. Possible values are Attach, FromImage and Empty."
}
variable "caching" {
    default = "ReadWrite"
    description = "Specifies the caching requirements for the Data Disk. Possible values include None, ReadOnly and ReadWrite."
}
variable "storage_acc_type"	{
    default = "Standard_LRS"
    description = "Specifies the type of Managed Disk which should be created. Possible values are Standard_LRS, StandardSSD_LRS or Premium_LRS."
}
variable "vm_tags" {
    type = map(any)
    description = "A map of tags to assign to the Virtual Machine."
}
variable "disk" {
    description = "managed disks to be attached. mention variables: disk_name, account_type, create_option, disk_size_gb,disk_encryption_set_id in order to create Attached disks. "
}
variable "public_network_access_enabled" {
  default = false
}
variable "network_access_policy" {
    default = "DenyAll"
}