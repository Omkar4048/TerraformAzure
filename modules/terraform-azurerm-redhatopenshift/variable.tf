variable "aro_name" {
  type = string
  description = "Name of the ARO."
  default = ""
}

variable "resource_group_name" {
  type = string
  description = "Name of the azure resource group."
  default = "" 
}

variable "deployment_mode" {
  type = string
  description = "The deployment mode of ARO."
  default = ""
}

variable "domain" {
  type = string
  description = "The requried domain for the ARO."
  default = ""
}

variable "fipsValidatedModules" {
  type = string
  description = "(Optional) Enable fipsValidatedModules for this ARO."
  default = "Disabled"
}

variable "aro_version" {
  type = string
  description = "The requried version of ARO."
  default = "4.10.40"
}

variable "rg_id" {
  type = string
  description = "The requried resource group id for ARO."
  default = ""
}

variable "client_id" {
  type = string
  description = "The requried client id for ARO."
  default = ""
}

variable "client_secret" {
  type = string
  description = "The requried client secret for ARO."
  default = ""
}

variable "pod_cidr" {
  default = ""
}

variable "service_cidr" {
  default = ""
}

variable "master_vmsize" {
  type = string
  description = "The requried vm size for master vm  size for ARO."
  default = "Standard_D8s_v3"
}

variable "master_subnet_id" {
  type = string
  description = "The requried master subnet id of ARO."
}

variable "master_encryption" {
  type = string
  description = "(Optional) Enables master encryption for this ARO."
  default = "Disabled"
}

variable "master_disk_encryption" {
  type = string
  description = "The requried master_disk_encryption for ARO."
}

variable "worker_name" {
  type = string
  description = "The requried worker name for ARO."
  default = "worker"
}

variable "worker_vm_size" {
  type = string
  description = "The requried vm size for worker vm  size for ARO."
  default = "Standard_D4s_v3"
}

variable "worker_disk_size" {
  type = string
  description = "The requried worker disk size for ARO."
  default = 500
}

variable "worker_subnet_id" {
  type = string
  description = "The requried worker subnet id of ARO"
}

variable "worker_count" {
  type = string
  default = 3
}

variable "worker_encryption" {
  type = string
  description = "(Optional) Enables master worker encryption for this ARO."
  default = "Disabled"
}

variable "worker_disk_encryption" {
  type = string
  description = "The requried worker disk encryption for this ARO."
}

variable "api_server_visibility" {
  type = string
  description = "API server Visibility set to Private."
  default = "Private"
}

variable "ingress_profile_name" {
  type = string
  description = "Name of Ingress Profile."
  default = "default"
}

variable "ingress_visibility" {
  type = string
  description = "Ingress Visibility Set to Private Only."
  default = "Private"
}

variable "aro_tags" {
  type = map(any)
  description = "Application tags passed from root module."
}
