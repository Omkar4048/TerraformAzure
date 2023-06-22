variable "acr_name" {
  type = string
  description = "(Required) Specifies the name of the Container Registry. Only Alphanumeric characters allowed. Changing this forces a new resource to be created."
}
variable "resource_group_name" {
  type = string
  description = "(Required) The name of the resource group in which to create the Container Registry. Changing this forces a new resource to be created."
}
variable "location" {
  type = string
  description = "(Required) Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}
variable "sku" {
  type = string
  default = "Premium"
  description = "(Required) The SKU name of the container registry. Possible values are Basic, Standard and Premium."
}
variable "identitytype" {
  type = string
  default = "UserAssigned"
  description = "(Required) Specifies the type of Managed Service Identity that should be configured on this Container Registry. Possible values are SystemAssigned, UserAssigned, (SystemAssigned, UserAssigned to enable both)."
}
variable "identityids" {
  type = list(string)
  description = "Specifies a list of User Assigned Managed Identity IDs to be assigned to this Container Registry. This is required when type is set to UserAssigned or (SystemAssigned, UserAssigned)."
}
variable "keyid" {
  type = string
  description = "(Required) The ID of the Key Vault Key."
}
variable "clientid" {
  type = string
  description = "(Required) The client ID of the managed identity associated with the encryption key."
}
variable "admin_enabled" {
  description = "For giving the admin access to acr."
}
variable "georeplications" {
  default = {}
  description = "The georeplications is only supported on new resources with the Premium SKU.The georeplications list cannot contain the location where the Container Registry exists.If more than one georeplications block is specified, they are expected to follow the alphabetic order on the location property."
}
variable "acr_tags" {
  type = map(any)
  description = "A map of tags to assign to the resource"
}
