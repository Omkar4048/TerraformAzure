variable "share_name" {
  type = string
  description = "The name of the share. Must be unique within the storage account where the share is located. Changing this forces a new resource to be created."
}
variable "storage_account_name" {
  type = string
  description = "Specifies the storage account in which to create the share. Changing this forces a new resource to be created."
}
variable "quota" {
  type = string
  description = "The maximum size of the share, in gigabytes. For Standard storage accounts, this must be 1GB (or higher) and at most 5120 GB (5 TB). For Premium FileStorage storage accounts, this must be greater than 100 GB and at most 102400 GB (100 TB)."
}
variable "access_tier" {
  type = string
  description = "The access tier of the File Share. Possible values are Hot, Cool and TransactionOptimized, Premium."
}
