variable "cluster_name" {
  type = string
  description = "Specifies the name for this HDInsight Kafka Cluster. Changing this forces a new resource to be created."
}
variable "resource_group_name" {
  type = string
  description = "Specifies the name of the Resource Group in which this HDInsight Kafka Cluster should exist. Changing this forces a new resource to be created."
}
variable "location" {
  type = string
  description = "Specifies the Azure Region which this HDInsight Kafka Cluster should exist. Changing this forces a new resource to be created."
}
variable "cluster_version" {
  type = string
  description = "Specifies the Version of HDInsights which should be used for this Cluster. Changing this forces a new resource to be created."
}
variable "tier" {
  type = string
  description = "Specifies the Tier which should be used for this HDInsight Kafka Cluster. Possible values are Standard or Premium. Changing this forces a new resource to be created."
}
variable "kafka_version" {
  type = string
  description = "The version of Kafka which should be used for this HDInsight Kafka Cluster. Changing this forces a new resource to be created."
}
variable "gateway_username" {
  type = string
  description = "The username used for the Ambari Portal. Changing this forces a new resource to be created."
}
variable "gateway_password" {
  type = string
  sensitive = true
  description = "The password used for the Ambari Portal.This password must be different from the one used for the head_node, worker_node and zookeeper_node roles."
}
variable "storage_container_id" {
  type = string
  description = "The ID of the Storage Container. Changing this forces a new resource to be created."
}
variable "storage_account_key" {
  type = string
  description = "The Access Key which should be used to connect to the Storage Account. Changing this forces a new resource to be created."
}
variable "is_default" {
  type = bool
  description = "Is this the Default Storage Account for the HDInsight Hadoop Cluster? Changing this forces a new resource to be created."
}
variable "head_node" {
  type = map(any)
  description = "Provide map of parameters: vm_size, user_name, password"
}
variable "worker_node" {
  type = map(any)
  description = "Provide map of parameters: vm_size, user_name, password, number_of_disks_per_node, target_instance_count"
}
variable "zookeeper_node" {
  type = map(any)
  description = "Provide map of parameters: vm_size, user_name, password"
}
