variable "mssql_server_name" {
  type = string
  description = "The name of the mssql server. 'name' can contain only lowercase letters, numbers, and '-', but can't start or end with '-' or have more than 63 characters. Changing this forces a new resource to be created."
}
variable "resource_group_name" {
  type = string
  description = "The name of the resource group in which to create the Redis instance. Changing this forces a new resource to be created."
}
variable "location" {
  type = string
  description = "(Required) The Azure Region where the User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created."
}
variable "sqlsvr_version" {
  default = "12.0"
  type = string
  description = "The version for the new server. Valid values are: 2.0 (for v11 server) and 12.0 (for v12 server). Changing this forces a new resource to be created."
}
variable "administrator_login" {
  type = string
  description = "(Required) Specifies the name of the SQL administrator."
}
variable "administrator_login_password" {
  description = "(Required) Specifies the password of the SQL administrator."
  type = string
}
variable "public_enabled" {
  default = false
  type = bool
  description = "Whether public network access is allowed for this server. Defaults to false."
}
variable "tls_version" {
  default = "1.2"
  type = string
  description = " The Minimum TLS Version for all SQL Database and SQL Data Warehouse databases associated with the server. Valid values are: 1.0, 1.1 , 1.2 and Disabled. Defaults to 1.2."
}
variable "identity_type" {
  type = string
  description = "This is used to deploy using the type of identity"
  default = "UserAssigned"
}
variable "identityid" {
  type = string
  description = "This variable is defined for the resource id deployed by using UserAssigned identity so we need to map for sql server."
}
variable "mssqlserver_tags" {
  description = "A mapping of tags to assign to the resource."
  type = map(any)
}
variable "key_id" {
  type = string
  description = "To use customer managed keys from Azure Key Vault, provide the AKV Key ID. To use service managed keys, omit this field."
}
