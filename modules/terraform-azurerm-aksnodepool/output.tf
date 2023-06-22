output "node_pool_id" {
  value = azurerm_kubernetes_cluster_node_pool.node_pool[*].id
  description = "The ID of the Kubernetes Cluster Node Pool."
}
