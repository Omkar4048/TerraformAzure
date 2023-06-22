variable "storage_queue" {
  type = string
  description = "The name of the Queue which should be created within the Storage Account. Must be unique within the storage account the queue is located. Changing this forces a new resource to be created."
}
variable "storage_account_name" {
  type = string
  description = "Specifies the Storage Account in which the Storage Queue should exist. Changing this forces a new resource to be created."
}
