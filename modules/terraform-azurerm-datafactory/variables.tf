variable "resource_group_name" {
  description = "The name of the resource group in which to create the datafactory. Changing this forces a new resource to be created."
  type = string
}


variable "location" {
  description = "(Required) The Azure Region where the data factory should exist. Changing this forces a new data factory to be created."
  type = string
}

variable "public_enabled" {
  default = false
  description = "Whether the public network access is enabled? Defaults to false."
}
variable "azurerm_data_factory_name" {
  description = "(Required) Specifies the name of the Data Factory Dataset. Changing this forces a new resource to be created. Must be globally unique."
  type = string
 }

variable "private_endpoint_name" {
  description = "Azure private endpoint is a network interface that connects you privately and securely to a service powered by Azure Private Link."
  type = string
  default = "adf-PEP"
}

variable "identity_type" {
  description = "This is used to deploy using the type of identity"
  type = string
  default = "UserAssigned"
}

variable "identity_ids" {
  description = "user assigned identity to be used for data factory service."
  type = list(string)
}

variable "adf_tags" {
  description = "A mapping of tags to assign to the resource." 
  type = map(any)
}
