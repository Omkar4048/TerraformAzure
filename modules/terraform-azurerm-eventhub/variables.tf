variable "rg_name" {
  description = "The name of the resource group in which to create event hub. Changing this forces a new resource to be created."
  type = string
}

variable "namespace_name" {
  description = "(Required) Specifies the name of the EventHub Namespace. Changing this forces a new resource to be created."
  type = string
}

variable "eventhub_name" {
  description = "(Required) Specifies the name of the EventHub resource. Changing this forces a new resource to be created."
  type = string
}

variable "partition_count" {
  description = "(Required) Specifies the current number of shards on the Event Hub. Changing this will force-recreate the resource."
  type = string
  default = "2"
}

variable "message_retention" {
  description = "(Required) Specifies the number of days to retain the events for this Event Hub."
  type = string
  default = "1"
}

#variable "eventhub_tags" {
  #description = "A mapping of tags to assign to the resource."
 # type = map(any)
#}
