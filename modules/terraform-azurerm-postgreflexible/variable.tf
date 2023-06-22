variable "postgre_server_name" {
  type = string
  description = "(Required) The name which should be used for this PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created."
}
variable "resource_group_name" {
  type = string
  description = "(Required) The name of the Resource Group where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created."
}
variable "location" {
  type = string
  description = "(Required) The Azure Region where the PostgreSQL Flexible Server should exist. Changing this forces a new PostgreSQL Flexible Server to be created."
}
variable "username" {
  type = string
  description = "(Optional) The Administrator login for the PostgreSQL Flexible Server. Required when create_mode is Default and authentication.password_auth_enabled is true."
}
variable "password" {
  type = string
  description = "The Password associated with the administrator_login for the PostgreSQL Flexible Server. Required when create_mode is Default and authentication.password_auth_enabled is true."
}
variable "postgre_version" {
  type = string
  description = "The version of PostgreSQL Flexible Server to use. Possible values are 11,12, 13 and 14. Required when create_mode is Default. Changing this forces a new PostgreSQL Flexible Server to be created."
}
variable "identity_type" {
  type = string
  description = "Specifies the type of Managed Service Identity that should be configured on this Storage Account. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both)."
}
variable "identity_id" {
  type = list
  description = "Specifies a list of User Assigned Managed Identity IDs to be assigned to this Storage Account."
}
variable "key_id" {
  type = string
  description = "The ID of the Key Vault Key, supplying a version-less key ID will enable auto-rotation of this key."
}
variable "subnet_id" {
  type = string
  description = "The ID of the virtual network subnet to create the PostgreSQL Flexible Server. The provided subnet should not have any other resource deployed in it and this subnet will be delegated to the PostgreSQL Flexible Server, if not already delegated. Changing this forces a new PostgreSQL Flexible Server to be created."
}
variable "dns_zone_id" {
  type = string
  description = "The ID of the private DNS zone to create the PostgreSQL Flexible Server. Changing this forces a new PostgreSQL Flexible Server to be created."
}
variable "zone" {
  type = string
  nullable = true
  description = "Specifies the Availability Zone in which the PostgreSQL Flexible Server should be located. Not available in SouthIndia"
}
variable "retention_days" {
  type = number
  description = "The backup retention days for the PostgreSQL Flexible Server. Possible values are between 7 and 35 days."
}
variable "storage_mb" {
  type = number
  description = "The max storage allowed for the PostgreSQL Flexible Server. Possible values are 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, and 16777216"
}
variable "high_availability" {
  type = map(object({
    mode = string
    standby_zone = string
  }))
  description = "The high availability mode for the PostgreSQL Flexible Server. Possible value are SameZone or ZoneRedundant. Also specify standby zone."
}
variable "sku" {
  type = string
  description = "The SKU Name for the PostgreSQL Flexible Server. The name of the SKU, follows the tier + name pattern (e.g. B_Standard_B1ms, GP_Standard_D2s_v3, MO_Standard_E4s_v3)."
}
variable "postgre_tags" {
  type = map(any)
  description = "map of tags for flexible server."
}
