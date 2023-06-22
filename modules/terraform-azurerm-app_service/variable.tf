variable "app_service_name" {
  type = string
  description = "Specifies the name of the App Service. Changing this forces a new resource to be created."
}
variable "resource_group_name" {
  type = string
  description = "The name of the resource group in which to create the App Service. Changing this forces a new resource to be created."
}
variable "location" {
  type = string
  description = "Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created."
}
variable "app_settings" {
  type = map(any)
  description = "A key-value pair of App Settings."
}
variable "service_plan_id" {
  type = string
  description = "The ID of the App Service Plan within which to create this App Service."
}
variable "site_config" {
  default = {}
  description = "provide mentioned pareameter: dotnet_version, scm_type"
}
variable "identity_type" {
  type = string
  description = "Specifies the identity type of the App Service. Possible values are SystemAssigned (where Azure will generate a Service Principal for you), UserAssigned where you can specify the Service Principal IDs in the identity_ids field, and SystemAssigned, UserAssigned which assigns both a system managed identity as well as the specified user assigned identities."
}
variable "identity_ids" {
  type = list
  default = []
  description = "Specifies a list of user managed identity ids to be assigned. Required if type is UserAssigned."
}
variable "connection_string" {
  default = {}
  description = "One or more connection_string define. provide parameters: name, type, value."
}
variable "app_service_tags" {
  type = map(any)
  description = "map of tags to be attached to resource."
}
