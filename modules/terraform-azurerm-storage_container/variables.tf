variable "storage_container" {
  type = string
  description = "The name of the Container which should be created within the Storage Account. Changing this forces a new resource to be created."
}
variable "storage_account_name" {
  type = string
  description = "The name of the Storage Account where the Container should be created. Changing this forces a new resource to be created."
}
variable "container_access" {
  type = string
  description = "The Access Level configured for this Container. Possible values are blob, container or private. Defaults to private."
}
