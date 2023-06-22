resource "azurerm_kubernetes_cluster" "Aks_testing" {
    name                    = var.aks_name	 
    location                = var.location
    resource_group_name     = var.resource_group_name
    dns_prefix              = var.dns_prefix	
    private_cluster_enabled = var.private_cluster
    private_cluster_public_fqdn_enabled = var.fqdn_enabled
    kubernetes_version	    = var.kubeversion	
    private_dns_zone_id     = var.dns_zone_id
    sku_tier = var.sku_tier
    #node_resource_group    = "${var.dns_prefix}-managed"		#this is managed RG created for Nodes
    public_network_access_enabled = var.public_network
    automatic_channel_upgrade = var.channel_upgrade
    network_profile {
        network_plugin      = var.Net_Plugin
	    network_policy      = var.Net_Policy
        #network_mode       = var.Net_Mode		#network_mode can only be set to bridge for existing Kubernetes Clusters and cannot be used to provision new Clusters
        dns_service_ip	    = var.dns_ip
        docker_bridge_cidr  = var.docker_cidr
        outbound_type	    = var.Out_Type
        service_cidr	    = var.service_cidr
    }
    disk_encryption_set_id  = var.disk_encryption_set_id
    default_node_pool {
		name                = var.node_pool_name
		node_count          = var.agent_count
		vm_size             = var.vm_size
		vnet_subnet_id	    = var.subnet_id
		enable_auto_scaling = var.enable_auto_scaling
		os_disk_size_gb     = var.os_disk_size
		max_pods	        = var.max_pods
		max_count           = var.max_nodes
		min_count           = var.min_nodes
    }
    dynamic "azure_active_directory_role_based_access_control" {
        for_each = var.aadrbac
        content {
            managed = azure_active_directory_role_based_access_control.value["managed"]
            tenant_id = var.tenant_id
            admin_group_object_ids = azure_active_directory_role_based_access_control.value["admin_group_object_ids"]
            azure_rbac_enabled = azure_active_directory_role_based_access_control.value["azure_rbac_enabled"]
        }
    }
    identity {
        type 		      	= var.identity_type
        identity_ids 		= var.aks_identity	#if type=userassigned need to mention
    }
    oms_agent {
        log_analytics_workspace_id = var.log_analytics_workspace_id
    }
    http_proxy_config {
      	http_proxy 	  = var.httpproxy
        https_proxy 	= var.httpsproxy
        no_proxy    	= var.no_proxy
    }
    timeouts {
        create 	= "25m"
        read 	= "25m"
        delete 	= "30m"
        update 	= "30m" 
    }
    tags 	= var.aks_tags
    lifecycle {
       ignore_changes = [tags, http_proxy_config[0].no_proxy, ]
       
    }
}

