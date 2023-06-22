variable "subnet_id" {
  type = string
  description = "(Required) The ID of the Subnet. Changing this forces a new resource to be created."
}
variable "rt_id" {
  type = string
  description = "(Required) The ID of the Route Table which should be associated with the Subnet. Changing this forces a new resource to be created."
}
