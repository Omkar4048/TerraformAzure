variable "servicebus_namespace_name" {
type = string
description =  "(Required) Specifies the name of the ServiceBus Namespace resource . Changing this forces a new resource to be created."
}

variable "location" {
type = string
description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}

variable "resource_group_name" {
type = string
description = "(Required) The name of the resource group in which to Changing this forces a new resource to be created. create the namespace."
}

variable "sku" {
type = string
description = "(Required) Defines which tier to use. Options are Basic, Standard or Premium. Please note that setting this field to Premium will force the creation of a new resource."
default = "Premium"
}

variable "capacity" {
type = string
description = " (Optional) Specifies the capacity. When sku is Premium, capacity can be 1, 2, 4, 8 or 16. When sku is Basic or Standard, capacity can be 0 only."
}

variable "namespace_tags" {
  type = map(any)
  description = "A map of tags to assign to the resource."
}
