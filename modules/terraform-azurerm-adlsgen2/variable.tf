variable "adls_name" {
  type = string
  description = "The name of the Data Lake Gen2 File System which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created."
}
variable "storage_account_id" {
  type = string
  description = "Specifies the ID of the Storage Account in which the Data Lake Gen2 File System should exist. Changing this forces a new resource to be created."
}
variable "ace" {
  type = map(any)
  default = {}
  description = "One or more ace blocks as defined below to specify the entries for the ACL for the path. Define Parameters: type, id, permissions"
}