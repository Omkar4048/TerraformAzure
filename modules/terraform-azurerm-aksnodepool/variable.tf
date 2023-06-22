variable "node_pool_name" {
  type = string
  description = "The name of the Node Pool which should be created within the Kubernetes Cluster. Changing this forces a new resource to be created."
}
variable "cluster_id" {
  type = string
  description = "The ID of the Kubernetes Cluster where this Node Pool should exist. Changing this forces a new resource to be created."
}
variable "vm_size" {
  type = string
  description = "The SKU which should be used for the Virtual Machines used in this Node Pool. Changing this forces a new resource to be created."
}
variable "agent_count" {
  type = number
  description = "The initial number of nodes which should exist within this Node Pool. Valid values are between 0 and 1000 (inclusive) for user pools and between 1 and 1000 (inclusive) for system pools and must be a value in the range min_count - max_count."
}
variable "aks_tags" {
  type = map(any)
  description = "A map of tags to assign to the resource."
}
variable "vnet_subnet_id" {
  type = string
  description = "The ID of the Subnet where this Node Pool should exist. Changing this forces a new resource to be created."
}
variable "os_disk_size_gb" {}
variable "max_pods" {
  type = number
  description = "The maximum number of pods that can run on each agent. Changing this forces a new resource to be created."
}
variable "max_count" {
  type = number
  nullable = true
  description = "The maximum number of nodes which should exist within this Node Pool. Valid values are between 0 and 1000 and must be greater than or equal to min_count."
}
variable "min_count" {
  type = number
  nullable = true
  description = "(Optional) The minimum number of nodes which should exist within this Node Pool. Valid values are between 0 and 1000 and must be less than or equal to max_count."
}
variable "enable_auto_scaling" {
  type = bool
  description = "Whether to enable auto-scaler."
}
