variable "nic_name" {
  type = string
  description = "(Required) The name of the Network Interface. Changing this forces a new resource to be created."
}
variable "location" {
  type = string
  description = "(Required) The location where the Network Interface should exist. Changing this forces a new resource to be created."
}
variable "rg_name" {
  type = string
  description = "(Required) The name of the Resource Group in which to create the Network Interface. Changing this forces a new resource to be created."
}
variable "ipconfig" {
  default = "ipconfig01"
  type = string
  description = "(Required) A name used for this IP Configuration. One or more ip_configuration blocks as defined below."
}
variable "subnet_id" {
  type = string
  description = "(Optional) The ID of the Subnet where this Network Interface should be located in."
}
variable "private_ip" {
  default = "Dynamic"
  type = string
  description = "(Required) The allocation method used for the Private IP Address. Possible values are Dynamic and Static."
}
variable "private_ip_address" {
  default = ""
  type = string 
  description = "The Static IP Address which should be used."

}
variable "nic_tags" {
  type = map(any)
  description = "A map of tags to assign to the resource."
}
