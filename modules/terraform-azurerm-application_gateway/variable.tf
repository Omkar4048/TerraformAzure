variable "app_gateway_name" {
  type = string
  description = "The name of the Application Gateway. Changing this forces a new resource to be created."
}
variable "resource_group_name" {
  type = string
  description = "The name of the resource group in which to the Application Gateway should exist. Changing this forces a new resource to be created."
}
variable "location" {
  type = string
  description = "The Azure region where the Application Gateway should exist. Changing this forces a new resource to be created."
}
variable "enable_http2" {
  type = bool
  default = false
  description = "Is HTTP2 enabled on the application gateway resource? Defaults to false."
}
variable "sku_name" {
  type = string
  description = "The Name of the SKU to use for this Application Gateway. Possible values are Standard_Small, Standard_Medium, Standard_Large, Standard_v2, WAF_Medium, WAF_Large, and WAF_v2."
}
variable "tier" {
  type = string
  description = "The Tier of the SKU to use for this Application Gateway. Possible values are Standard, Standard_v2, WAF and WAF_v2."
}
variable "capacity" {
  description = "The Capacity of the SKU to use for this Application Gateway. When using a V1 SKU this value must be between 1 and 32, and 1 to 125 for a V2 SKU. This property is optional if autoscale_configuration is set."
}
variable "frontend_subnet_id" {
  type = string
  description = "The ID of the Subnet which the Application Gateway should be connected to."
}
variable "frontend_port_name" {
  type = string
  description = "The name of the Frontend Port."
}
variable "frontend_port" {
  type = number
  description = "The port used for this Frontend Port."
}
variable "private_ip_address" {
  type = string
  nullable = true
  description = "The Private IP Address to use for the Application Gateway."
}
variable "private_ip_address_allocation" {
  type = string
  default = "dynamic"
  description = "The Allocation Method for the Private IP Address. Possible values are Dynamic and Static."
}
variable "backend_address_pool" {
  type = map(any)
  description = "Define Map of Names for Backend Address Pool to Create Multiple Address Pools."
}
variable "backend_http_settings" {
  type = map(any)
  description = "Define map of parameters : name, path, port, protocol, request_timeout"
}
variable "http_listener" {
  type = map(any)
  description = "Define map of parameter: listener_name, frontend_ip_configuration_name, frontend_port_name, protocol"
}
variable "request_routing_rule" {
  type = map(any)
  description = "Define map of paramter: request_routing_rule_name, rule_type, listener_name, backend_address_pool_name, http_setting_name"
}
variable "probe" {
  type = map(any)
  default = {}
  description = "Define map of paramter:"
}
variable "ssl_profile" {
  default = {}
  description = "The name of the SSL Profile that is unique within this Application Gateway.Define map of paramter: name, policy_type, cipher_suites, min_protocol_version"
}
