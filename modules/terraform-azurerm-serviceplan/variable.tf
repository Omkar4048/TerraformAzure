variable "service_plan_name" {
  type = string
  description = "The name which should be used for this Service Plan. Changing this forces a new AppService to be created."
}
variable "resource_group_name" {
  type = string
  description = "The name of the Resource Group where the AppService should exist. Changing this forces a new AppService to be created."
}
variable "location" {
  type = string
  description = "The Azure Region where the Service Plan should exist. Changing this forces a new AppService to be created."
}
variable "os_type" {
  type = string
  description = "The O/S type for the App Services to be hosted in this plan. Possible values include Windows, Linux, and WindowsContainer. Changing this forces a new resource to be created."
}
variable "sku_name" {
  type = string
  description = "The SKU for the plan. Possible values include B1, B2, B3, D1, F1, I1, I2, I3, I1v2, I2v2, I3v2, I4v2, I5v2, I6v2, P1v2, P2v2, P3v2, P1v3, P2v3, P3v3, P1mv3, P2mv3, P3mv3, P4mv3, P5mv3, S1, S2, S3, SHARED, EP1, EP2, EP3, WS1, WS2, WS3, and Y1.Isolated SKUs (I1, I2, I3, I1v2, I2v2, and I3v2) can only be used with App Service Environments.Elastic and Consumption SKUs (Y1, EP1, EP2, and EP3) are for use with Function Apps."
}
variable "service_plan_tags" {
  type = map(any)
  description = "A mapping of tags which should be assigned to the AppService."
}
variable "per_site_scaling_enabled" {
  type = bool
  default = false
  description = "Should Per Site Scaling be enabled. Defaults to false."
}