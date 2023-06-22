variable "app_config_name" {
  type = string
  description = " Specifies the name of the App Configuration. names should be globally unique. Changing this forces a new resource to be created."
}
variable "resource_group_name" {
  type = string
  description = "The name of the resource group in which to create the App Configuration. Changing this forces a new resource to be created."
}
variable "location" {
  type = string
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}
variable "sku" {
  type = string
  description = "The SKU name of the App Configuration. Possible values are free and standard."
}
variable "local_auth" {
  type = bool
  default = false
  description = "Whether local authentication methods is enabled. Defaults to false."
}
variable "public_access" {
  type = string
  default = "Disabled"
  description = "The Public Network Access setting of the App Configuration. Possible values are Enabled and Disabled. Defaults to Disabled"
}
variable "purge_protection_enabled" {
  type = bool
  default = false
  description = "Whether Purge Protection is enabled. This field only works for standard sku. Defaults to false."
}
variable "retention_days" {
  type = number
  default = 7
  description = "The number of days that items should be retained for once soft-deleted. This field only works for standard sku. This value can be between 1 and 7 days. Defaults to 7. Changing this forces a new resource to be created."
}
variable "identity_type" {
  type = string
  description = "Specifies the type of Managed Service Identity that should be configured on this App Configuration. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both)."
}
variable "identity_ids" {
  type = list
  description = "A list of User Assigned Managed Identity IDs to be assigned to this App Configuration."
}
variable "key_vault_key_identifier" {
  type = string
  description = " Specifies the URI of the key vault key used to encrypt data."
}
variable "identity_client_id" {
  type = string
  description = "Specifies the client id of the identity which will be used to access key vault."
}
variable "app_tags" {
  type = map(any)
  description = " A mapping of tags to assign to the resource."
}
