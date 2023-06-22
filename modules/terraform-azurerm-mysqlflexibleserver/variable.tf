variable "mysqlflexible_server_name" {
  type = string
  description = "The name which should be used for this MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created."
}
variable "resource_group_name" {
  type = string
  description = "The name of the Resource Group where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created."
}
variable "location" {
  type = string
  description = "The Azure Region where the MySQL Flexible Server should exist. Changing this forces a new MySQL Flexible Server to be created."
}
variable "login" {
  type = string
  description = "The Administrator login for the MySQL Flexible Server. Required when create_mode is Default. Changing this forces a new MySQL Flexible Server to be created."
}
variable "password" {
  type = string
  sensitive = true
  description = "The Password associated with the administrator_login for the MySQL Flexible Server. Required when create_mode is Default."
}
variable "retention_days" {
  type = number
  description = "The backup retention days for the MySQL Flexible Server. Possible values are between 1 and 35 days. Defaults to 7."
}
variable "subne_id" {
  type = string
  description = "The ID of the virtual network subnet to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created."
}
variable "pdnszone_id" {
  type = string
  description = "The ID of the private DNS zone to create the MySQL Flexible Server. Changing this forces a new MySQL Flexible Server to be created."
}
variable "sku" {
  type = string
  description = "The SKU Name for the MySQL Flexible Server.sku_name should start with SKU tier B (Burstable), GP (General Purpose), MO (Memory Optimized) like B_Standard_B1s."
}
variable "zone" {
  type = number
  nullable = true
  description = "Specifies the Availability Zone in which this MySQL Flexible Server should be located. Possible values are 1, 2 and 3."
}
variable "mysql_version" {
  type = string
  description = "The version of the MySQL Flexible Server to use. Possible values are 5.7, and 8.0.21. Changing this forces a new MySQL Flexible Server to be created."
}
variable "identity_type" {
  type = string
  description = "Specifies the type of Managed Service Identity that should be configured on this MySQL Flexible Server. The only possible value is UserAssigned."
}
variable "identity_ids" {
  type = list
  description = "A list of User Assigned Managed Identity IDs to be assigned to this MySQL Flexible Server."
}
variable "key_vault_key_id" {
  type = string
  description = "The ID of the Key Vault Key."
}
variable "high_availability" {
  type = map(any)
  default = {}
  description = "The high availability mode for the MySQL Flexible Server. Possibles values are SameZone and ZoneRedundant. Provide parameters: mode, standby_zone"
}
variable "iops" {
  type = number
  description = "The storage IOPS for the MySQL Flexible Server. Possible values are between 360 and 20000."
}
variable "size_gb" {
  type = number
  description = "The max storage allowed for the MySQL Flexible Server. Possible values are between 20 and 16384."
}
variable "mysql_tags" {
  type = map(any)
  description = "map of tags for mysql flexible server."
}