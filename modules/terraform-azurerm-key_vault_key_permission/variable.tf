variable "keyvault_id" {
  type = string
  description = "Specifies the id of the Key Vault resource. Changing this forces a new resource to be created."
}
variable "object_id" {
  type = string
  description = "The object ID of a user, service principal or security group in the Azure Active Directory tenant for the vault. The object ID of a service principal can be fetched from azuread_service_principal.object_id. The object ID must be unique for the list of access policies. Changing this forces a new resource to be created."
}
variable "key_permissions" {
  type = list
  description = "List of key permissions, must be one or more from the following: Backup, Create, Decrypt, Delete, Encrypt, Get, Import, List, Purge, Recover, Restore, Sign, UnwrapKey, Update, Verify, WrapKey, Release, Rotate, GetRotationPolicy and SetRotationPolicy."
}
variable "secret_permissions" {
  type = list
  default = []
  description = "List of secret permissions, must be one or more from the following: Backup, Delete, Get, List, Purge, Recover, Restore and Set."  
}
variable "storage_permissions" {
  type = list
  default = []
  description = "value"
}