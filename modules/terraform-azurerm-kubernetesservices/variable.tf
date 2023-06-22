variable "aks_name" {
  type = string
  description = " (Required) The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created."
}
variable "resource_group_name" {
  type = string
  description = "(Required) Specifies the Resource Group where the Managed Kubernetes Cluster should exist. Changing this forces a new resource to be created."
}
variable "location" {
  type = string
  description = "(Required) The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created."
}
variable "dns_prefix" {
  type = string
  description = "(Optional) DNS prefix specified when creating the managed cluster. Possible values must begin and end with a letter or number, contain only letters, numbers, and hyphens and be between 1 and 54 characters in length. Changing this forces a new resource to be created."
}
variable "private_cluster" {
  default = true
  description = "Should this Kubernetes Cluster have its API server only exposed on internal IP addresses? This provides a Private IP Address for the Kubernetes API on the Virtual Network where the Kubernetes Cluster is located. Defaults to false. Changing this forces a new resource to be created."
}
variable "sku_tier" {
  type = string
  default = "Standard"
  description = " The SKU Tier that should be used for this Kubernetes Cluster. Possible values are Free, and Standard (which includes the Uptime SLA). Defaults to Free."
}
variable "fqdn_enabled" {
  default = false
  description = "Specifies whether a Public FQDN for this Private Cluster should be added. Defaults to false."
}
variable "kubeversion" {
  default = "1.23.15"
  description = "Version of Kubernetes specified when creating the AKS managed cluster. If not specified, the latest recommended version will be used at provisioning time (but won't auto-upgrade). AKS does not require an exact patch version to be specified, minor version aliases such as 1.22 are also supported. - The minor version's latest GA patch is automatically chosen in that case."
}
variable "dns_zone_id" {
  type = string
  description = "Either the ID of Private DNS Zone which should be delegated to this Cluster, System to have AKS manage this or None. In case of None you will need to bring your own DNS server and set up resolving, otherwise, the cluster will have issues after provisioning. Changing this forces a new resource to be created."
}
variable "public_network" {
  default = false
  description = "Whether public network access is allowed for this Kubernetes Cluster. Defaults to true. Changing this forces a new resource to be created."
}
variable "channel_upgrade" {
  default = "stable"
  description = "The upgrade channel for this Kubernetes Cluster. Possible values are patch, rapid, node-image and stable. Omitting this field sets this value to none."
}
variable "Net_Plugin" {
  default = "azure"
  description = "Network plugin to use for networking. Currently supported values are azure, kubenet and none. Changing this forces a new resource to be created."
}
variable "Net_Policy" {
  default = "calico"
  description = "Sets up network policy to be used with Azure CNI. Network policy allows us to control the traffic flow between pods. Currently supported values are calico and azure. Changing this forces a new resource to be created."
}
variable "dns_ip" {
  description = " IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns). Changing this forces a new resource to be created."
}
variable "docker_cidr" {
  description = "IP address (in CIDR notation) used as the Docker bridge IP address on nodes. Changing this forces a new resource to be created."
}
variable "Out_Type" {
  default = "userDefinedRouting"
  description = "The outbound (egress) routing method which should be used for this Kubernetes Cluster. Possible values are loadBalancer, userDefinedRouting, managedNATGateway and userAssignedNATGateway. Defaults to loadBalancer. Changing this forces a new resource to be created."
}
variable "service_cidr" {
  description = "The Network Range used by the Kubernetes service. Changing this forces a new resource to be created."
}
variable "Net_Mode" {
  default = "bridge"
  description = "Network mode to be used with Azure CNI. Possible values are bridge and transparent. Changing this forces a new resource to be created."
}
variable "disk_encryption_set_id" {
  type = string
  description = "The ID of the Disk Encryption Set which should be used for the Nodes and Volumes. Changing this forces a new resource to be created."
}
variable "node_pool_name" {
 type = string
 default = "nodepool01"
 description = "(Required) The name which should be used for the default Kubernetes Node Pool. Changing this forces a new resource to be created."
}
variable "agent_count" {
 type = number
 description = "The initial number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000 and between min_count and max_count."
}
variable "vm_size" {
 type = string
 description = "(Required) The size of the Virtual Machine, such as Standard_DS2_v2."
}
variable "aadrbac" { 
  type = map(any)
  default = {}
  description = "Is the Azure Active Directory integration Managed, meaning that Azure will create/manage the Service Principal used for integration."
}
 
variable "subnet_id" {
 type = string
 description = "The ID of a Subnet where the Kubernetes Node Pool should exist. Changing this forces a new resource to be created."
}
variable "os_disk_size" {
 type = number
 default = 30
 description = "The size of the OS Disk which should be used for each agent in the Node Pool. Changing this forces a new resource to be created."
}
variable "tenant_id" {
  type = string
  description = "The Tenant ID used for Azure Active Directory Application. If this isn't specified the Tenant ID of the current Subscription is used."
}
variable "enable_auto_scaling" {
  type = bool
  default = false
  description = "Should the Kubernetes Auto Scaler be enabled for this Node Pool?"
}
variable "max_nodes" {
 type = number
 nullable = true
 default = null
 description = "The maximum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000."
}
variable "min_nodes" {
 type = number
 nullable = true
 default = null
 description = " The minimum number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000."
}
variable "max_pods" {
 type = number
 default = 30
 description = "The maximum number of pods that can run on each agent. Changing this forces a new resource to be created."
}
variable "identity_type" {
  default = "UserAssigned"
  description = "(Required) Specifies the type of Managed Service Identity that should be configured on this Kubernetes Cluster. Possible values are SystemAssigned or UserAssigned."
}
variable "aks_identity" {
  type = list
  description = "Specifies a list of User Assigned Managed Identity IDs to be assigned to this Kubernetes Cluster."
}
variable "log_analytics_workspace_id" {
  type = string
  description = "(Required) Specifies the ID of the Log Analytics Workspace where the audit logs collected by Microsoft Defender should be sent to."
}
variable "httpproxy" {
  type = string
  description = "The proxy address to be used when communicating over HTTP. Changing this forces a new resource to be created."
}
variable "httpsproxy" {
  type = string
  description = "The proxy address to be used when communicating over HTTPS. Changing this forces a new resource to be created."
}
variable "no_proxy" {
  type = list
  description = "The list of domains that will not use the proxy for communication. Changing this forces a new resource to be created."
}
variable "aks_tags" {
  type = map(any)
  description = "A map of tags to assign to the resource."
}
