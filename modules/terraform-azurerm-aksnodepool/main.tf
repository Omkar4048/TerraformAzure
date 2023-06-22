resource "azurerm_kubernetes_cluster_node_pool" "node_pool" {
  name                  = var.node_pool_name
  kubernetes_cluster_id = var.cluster_id
  vm_size               = var.vm_size
  node_count            = var.agent_count
  vnet_subnet_id        = var.vnet_subnet_id
  os_disk_size_gb       = var.os_disk_size_gb
  max_pods              = var.max_pods
  max_count             = var.max_count
  min_count             = var.min_count
  enable_auto_scaling   = var.enable_auto_scaling
  tags                  = var.aks_tags
  lifecycle {
       ignore_changes = [tags, node_count]
    }
}
