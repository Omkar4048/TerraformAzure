variable "sql_database_name" {
  description = "(Required) The name of the MS SQL Database. Changing this forces a new resource to be created."
  type = string
}
variable "server_id" {
  description = "The server id of the sql server to map the database."
  type = string
}
variable "create_mode" {
  description = "(Optional) The create mode of the database."
  type = string
  default = "Default"
}
variable "sqldb_tags" {
  description = "A mapping of tags to assign to the resource."
  type = map(any)
}
variable "max_size_gb" {
  description = "(Optional) The max size of the database in gigabytes."
  type = string
  default = "4"  #LicenseIncluded
}
variable "read_scale" {
  description = "(Optional) If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica."
  type = string
  default = "true"  #LicenseIncluded
}

variable "sku_name" {
  description = "(Optional) Specifies the name of the SKU used by the database. For example, GP_S_Gen5_2,HS_Gen4_1,BC_Gen5_2, ElasticPool, Basic,S0, P2 ,DW100c, DS100."
  type = string
  default = "GP_S_Gen5_2"  #GP_S_Gen5_2,HS_Gen4_1,BC_Gen5_2, ElasticPool, Basic,S0, P2 ,DW100c, DS100
}

variable "zone_redundant" {
  description = "(Optional) Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones."
  type = string
  default = "false"  #LicenseIncluded
}
