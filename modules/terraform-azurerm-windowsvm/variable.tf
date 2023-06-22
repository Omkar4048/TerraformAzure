variable "image_id" {
    type = string
    description = "Specifies the ID of the Custom Image which the Virtual Machine should be created from. Changing this forces a new resource to be created."
}
variable "vm_name" {
    type = string
    description = "(Required) Specifies the name of the Virtual Machine. Changing this forces a new resource to be created."
}
variable "nic_id" {
    type = list
    description = "(Required) A list of Network Interface IDs which should be associated with the Virtual Machine."
}
variable "vmsize" {
    type = string
    description = "(Required) Specifies the size of the Virtual Machine. Ex. Standard_F2s_v2"
}
variable "resource_group_name" {
    type = string
    description = " (Required) Specifies the name of the Resource Group in which the Virtual Machine should exist. Changing this forces a new resource to be created."
}
variable "location" {
    type = string
    description = "(Required) Specifies the Azure Region where the Virtual Machine exists. Changing this forces a new resource to be created."
}
variable "licence_type" {
    type = string
    default = "Windows_Server"
    description = "(Optional) Specifies the BYOL Type for this Virtual Machine. This is only applicable to Windows Virtual Machines. Possible values are Windows_Client and Windows_Server. "
}
variable "username" {
    type = string
    description = "(Required) Specifies the name of the local administrator account. Default = netadmin"
}
variable "password" {
    type = string
    sensitive   = true
    description = "The password associated with the local administrator account."
}
variable "caching" {
    default = "ReadWrite"
    description = "(Optional) Specifies the caching requirements for the Data Disk. Possible values include None, ReadOnly and ReadWrite."
}
variable "create_option" {
    default = "FromImage"
    description = "(Required) Specifies how the data disk should be created. Possible values are Attach, FromImage and Empty."
}
variable "storage_acc_type"	{
    default = "Standard_LRS"
    description = " Specifies the type of managed disk to create. Possible values are either Standard_LRS, StandardSSD_LRS, Premium_LRS or UltraSSD_LRS."
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