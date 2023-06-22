variable "resource_group_name" {
  description = "The name of the resource group in which to create the Redis instance. Changing this forces a new resource to be created."
  type = string
}

variable "location" {
  description = "(Required) The Azure Region where the User Assigned Identity should exist. Changing this forces a new User Assigned Identity to be created."
  type = string
}

variable "mssql_server_name" {
type = string
description = "The name of the mssql server. Changing this forces a new resource to be created."
}


variable "sql_elasticpool_name" {
  description = "(Required) The name of the elastic pool. This needs to be globally unique. Changing this forces a new resource to be created." 
  type = string
}

variable "license_type" {
  description = "(Optional) Specifies the license type applied to this database. Possible values are LicenseIncluded and BasePrice."
  type = string
  default = "LicenseIncluded"
}

variable "max_size_gb" {
  description = "(Optional) The max data size of the elastic pool in gigabytes."
  type = string
  default = "756"
}

variable "sku_name" {
  description = "(Optional) Specifies the name of the SKU used by the database. For example, GP_S_Gen5_2,HS_Gen4_1,BC_Gen5_2, ElasticPool, Basic,S0, P2 ,DW100c, DS100."
  type = string
  default = "GP_Gen5"   #BasicPool, StandardPool, PremiumPool, GP_Gen4, GP_Gen5, GP_Fsv2, GP_DC, BC_Gen4, BC_Gen5
}

variable "tier" {
  description = "(Required) The tier of the particular SKU. Possible values are GeneralPurpose, BusinessCritical, Basic, Standard, or Premium."
  type = string
  default = "GeneralPurpose"   #GeneralPurpose, BusinessCritical, Basic, Standard, or Premium
}

# variable "family" {
#   description = "The family of hardware Gen4, Gen5, Fsv2 or DC."
# #  type = string
#   default = null #Gen4, Gen5, Fsv2 or DC.
# }

variable "capacity" {
  description = "(Required) The scale up/out capacity, representing server's compute units."
  type = string
  default = "4"
}

variable "min_capacity" {
  description = "(Required) The minimum capacity all databases are guaranteed."
  type = string
  default = "0.25"
}

variable "max_capacity" {
  description = "(Required) The maximum capacity all databases are guaranteed."
  type = string
  default = "4"
}

variable "sqlpool_tags" {
  description = "(Optional) A mapping of tags to assign to the resource."
  type = map(any)
}
