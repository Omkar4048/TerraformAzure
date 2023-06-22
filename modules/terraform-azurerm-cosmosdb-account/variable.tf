variable "cosmosdb_account_name" {
  type = string
  description = "Name of the Cosmos DB account."
 }

variable "resource_group_name" {
  type = string
  description = "Name of the azure resource group."
 }

variable "location" {
  type = string
  description = "Cosmos DB deployment region. Can be different vs. RG location."
 }

variable "offer_type" {
   type = string
   description = "(Required) Specifies the Offer Type to use for this CosmosDB Account; currently, this can only be set to Standard."
 }
  
variable "kind" {
   type = string
   description = "(Optional) Specifies the Kind of CosmosDB to create - possible values are GlobalDocumentDB, MongoDB and Parse. Defaults to GlobalDocumentDB. Changing this forces a new resource to be created."
 }

variable "key_vault_key_id" {
  type = string
  description = "(Optional) A versionless Key Vault Key ID for CMK encryption. Changing this forces a new resource to be created."
 }

variable "consistency_level" {
  type = string
  description = "The Consistency Level to use for this CosmosDB Account - can be either BoundedStaleness, Eventual, Session, Strong or ConsistentPrefix"
 }

variable "max_interval_in_seconds" {
  type = string
  description = "When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. Accepted range for this value is 5 - 86400 (1 day)"
 }

variable "max_staleness_prefix" {
  type = string
  description = "When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. Accepted range for this value is 10 – 2147483647"
 }

variable "geo_locations" {
  description = "List of map of geo locations and other properties to create primary and secodanry databasees."
  type = map(any)
}
  #   default = [
#     {
#       geo_location = "Central India"
#       failover_priority = 0
#       zone_redundant = "false"
#     }
#   ]
#  }

variable "backup_enabled" {
  type = bool
  description = "Enable backup for this Cosmos DB account"
 }

variable "backup_type" {
  type = string
  description = "Type of backup - can be either Periodic or Continuous" 
 }

variable "backup_interval" {
  type = string
  description = "The interval in minutes between two backups. This is configurable only when type is Periodic. Possible values are between 60 and 1440."
 }

variable "backup_retention" {
  type = string
  description = "The time in hours that each backup is retained. This is configurable only when type is Periodic. Possible values are between 8 and 720."
 }

variable "backup_redundancy" {
   type = string
   description = "(Optional) The storage redundancy is used to indicate the type of backup residency. This is configurable only when type is Periodic. Possible values are Geo, Local and Zone."
}
variable "enable_automatic_failover" {
  type = bool
  description = "(Optional) Enables virtual network filtering for this Cosmos DB account." 
 }

variable "enable_multiple_write_locations" {
  type = bool
  description = "(Optional) Enable multiple write locations for this Cosmos DB account."
 }

variable "is_virtual_network_filter_enabled" {
  type = bool
  description = "(Optional) Enables virtual network filtering for this Cosmos DB account."
 }

variable "enable_free_tier" {
  type = bool
  description = "(Optional) Enable the Free Tier pricing option for this Cosmos DB account. Defaults to false. Changing this forces a new resource to be created."
}

variable "mongo_server_version" {
  type = string
  description = "(Optional) The Server Version of a MongoDB account. Possible values are 4.2, 4.0, 3.6, and 3.2."
}
variable "cosmosdb_tags" {
  type = map(any)
  description = "A map of tags to assign to the resource"
}
