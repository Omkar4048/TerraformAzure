resource "azurerm_hdinsight_kafka_cluster" "kafka" {
  name                = var.cluster_name
  resource_group_name = var.resource_group_name
  location            = var.location
  cluster_version     = var.cluster_version
  tier                = var.tier

  component_version {
    kafka = var.kafka_version
  }

  gateway {
    username = var.gateway_username
    password = var.gateway_password
  }

  storage_account {
    storage_container_id = var.storage_container_id
    storage_account_key  = var.storage_account_key
    is_default           = var.is_default
  }

  roles {
    dynamic "head_node" {
    for_each = var.head_node
      content {
        vm_size  = head_node.value["vm_size"]
        username = head_node.value["user_name"]
        password = head_node.value["password"]
      }
    }

    dynamic "worker_node" {
    for_each = var.worker_node
        content {
          vm_size                  = worker_node.value["vm_size"]
          username                 = worker_node.value["user_name"]
          password                 = worker_node.value["password"]
          number_of_disks_per_node = worker_node.value["number_of_disks_per_node"]
          target_instance_count    = worker_node.value["target_instance_count"]
        }
    }

    dynamic "zookeeper_node" {
    for_each = var.zookeeper_node
        content {
          vm_size  = zookeeper_node.value["vm_size"]
          username = zookeeper_node.value["user_name"]
          password = zookeeper_node.value["password"]
        }
    }
  }
}