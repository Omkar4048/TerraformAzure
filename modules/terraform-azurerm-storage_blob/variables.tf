variable "storage_blob_name" {
  type = string
  description = "The name of the storage blob. Must be unique within the storage container the blob is located. Changing this forces a new resource to be created."
}
variable "storage_account_name" {
  type = string
  description = "Specifies the storage account in which to create the storage container. Changing this forces a new resource to be created. Changing this forces a new resource to be created."
}
variable "storage_container_name" {
  type = string
  description = "The name of the storage container in which this blob should be created. Changing this forces a new resource to be created."
}
variable "blob_type" {
  type = string
  description = "The type of the storage blob to be created. Possible values are Append, Block or Page. Changing this forces a new resource to be created."
}
variable "sourcefilename" {
  type = string
  description = "An absolute path to a file on the local system. This field cannot be specified for Append blobs and cannot be specified if source_content or source_uri is specified. Changing this forces a new resource to be created."
}
variable "access_tier" {
  type = string
  description = "The access tier of the storage blob. Possible values are Archive, Cool and Hot."
}
