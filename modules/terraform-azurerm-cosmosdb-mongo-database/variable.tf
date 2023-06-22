variable "resource_group_name" {
  type = string
  description = "Name of the azure resource group."
 }

variable "account_name" {
  type = string
  description = "Name of the Cosmos DB account."
 }
 
variable "throughput"{
   type = string
   description = "(Optional) The throughput of the MongoDB database (RU/s). Must be set in increments of 100. The minimum value is 400. This must be set upon database creation otherwise it cannot be updated without a manual terraform destroy-apply."
  }

 variable "mongo_database_name" {
   type = string
   description = " (Required) Specifies the name of the Cosmos DB Mongo Database. Changing this forces a new resource to be created."
  }
