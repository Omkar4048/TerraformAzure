variable "lock_name" {
  type = string
  description = " Specifies the name of the Management Lock. Changing this forces a new resource to be created."
}
variable "resource_id" {
  type = string
  description = "Specifies the scope at which the Management Lock should be created. Changing this forces a new resource to be created."
}
variable "lock_level" {
  type = string
  description = "Specifies the Level to be used for this Lock. Possible values are CanNotDelete and ReadOnly. Changing this forces a new resource to be created."
}
variable "notes" {
  type = string
  description = "Specifies some notes about the lock. Maximum of 512 characters. Changing this forces a new resource to be created."
}