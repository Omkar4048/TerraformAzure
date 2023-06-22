variable "storageaccountname" {
  type = string
  description = "Specifies the name of the storage account. Only lowercase Alphanumeric characters allowed. Changing this forces a new resource to be created. This must be unique across the entire Azure service, not just within the resource group."
}
variable "rg_name" {
  type = string
  description = "The name of the resource group in which to create the storage account. Changing this forces a new resource to be created."
}
variable "shared_access_key_enabled" {
  type = bool
  description = "Indicates whether the storage account permits requests to be authorized with the account access key via Shared Key. If false, then all requests, including shared access signatures, must be authorized with Azure Active Directory (Azure AD). The default value is true."
}
variable "location" {
  type = string
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}
variable "tier" {
  type = string
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium. For BlockBlobStorage and FileStorage accounts only Premium is valid. Changing this forces a new resource to be created."
}
variable "account_kind" {
  type = string
  description = "Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Defaults to StorageV2."
}
variable "replication" {
  type = string
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS, ZRS, GZRS and RAGZRS."
}
variable "network_rules" {
  type = map(any)
  default = {}
  description = "If specifying network_rules, one of either ip_rules or virtual_network_subnet_ids must be specified and default_action must be set to Deny."
}
variable "storage_tags" {
  type = map(any)
  description = "A mapping of tags to assign to the resource."
}
variable "public_enabled" {
  type = bool
  default = false
  description = "Whether the public network access is enabled? Defaults to false."
}
variable "nfsv3_enabled" {
  type = bool
  default = false
  description = "Is NFSv3 protocol enabled? Changing this forces a new resource to be created. Defaults to false."
}
variable "is_hns_enabled" {
  type = bool
  default = false
  description = "Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 (see here for more information). Changing this forces a new resource to be created.This can only be true when account_tier is Standard or when account_tier is Premium and account_kind is BlockBlobStorage"
}
variable "nested_public" {
  type = bool
  default = false
  description = "Allow or disallow nested items within this Account to opt into being public. Defaults to false."
}
variable "container" {
  type = map(object({
    storage_container_name = string
    container_access = string
  }))
  default = {}
  description = "This block will create Storage Container. Provide map of parameters: storage_container_name, container_access"
}
variable "blob" {
  type = map(object({
    storage_blob_name = string
    blob_type = string
    sourcefilename = string
    access_tier = string
  }))
  default = {}
  description = "This block will create Storage Blob. Provide map of Parameters: storage_blob_name, blob_type, sourcefilename, access_tier"
}
variable "queue" {
  type = map(object({
    queue_name = string
  }))
  default = {}
  description = "This block will create Storage Queue. Provide map of parameters: queue_name"
}
variable "fileshare" {
  type = map(object({
    share_name = string
    quota = string
    access_tier = string
    enabled_protocol =string
  }))
  default = {}
  description = "This block will create Storage File Share. Provide map of parameters: share_name, quota, access_tier, enabled_protocol"
}
variable "key_vault_id" {
  default = ""
  type = string
  description = "The ID of the Key Vault."
}
variable "key_name" {
  default = ""
  type = string
  description = "The name of Key Vault Key."
}
variable "identity_type" {
  default = "SystemAssigned"
  type = string
  description = "Specifies the type of Managed Service Identity that should be configured on this Storage Account. Possible values are SystemAssigned, UserAssigned, SystemAssigned, UserAssigned (to enable both)."
}
variable "identity_ids" {
  type = list
  default = []
  description = "Specifies a list of User Assigned Managed Identity IDs to be assigned to this Storage Account."
}
