resource "azapi_resource" "aro_cluster" {
    for_each = var.aro_cluster              #we cant use for_each in module block as az api provider issue.
    name      = "${each.value["aro_name"]}"
    location  = var.location
    parent_id = "${each.value["rg_id"]}"
    type      = var.openshift_template_version 
    tags      = merge(var.aro_tags,each.value.tags)
    
    body = jsonencode({
      properties = {
        clusterProfile = {
          domain               	= "${each.value["domain"]}"
          fipsValidatedModules 	= var.fips_validated_modules
          version               = "${each.value["aro_version"]}"
          resourceGroupId      	= "/subscriptions/${var.subscription_id}/resourcegroups/aro-${each.value["domain"]}"
          pullSecret           	= sensitive((file("${path.root}/pull_secret.txt")))
        }
        networkProfile = {
          podCidr              = var.pod_cidr
          serviceCidr          = var.service_cidr
        }

        masterProfile = {
          vmSize               	= "${each.value["master_node_vm_size"]}"
          subnetId              = "${each.value["master_subnet_id"]}"
          encryptionAtHost     	= var.encryption_at_host
          diskEncryptionSetId   = "${each.value["diskEncryptionSetId"]}"
        }
        workerProfiles = [
          {
            name               = "${each.value["worker_profile_name"]}"
            vmSize             = "${each.value["worker_node_vm_size"]}"
            diskSizeGB         = "${each.value["worker_node_vm_disk_size"]}"
            subnetId           = "${each.value["worker_subnet_id"]}"
            count              = "${each.value["worker_node_count"]}"
            encryptionAtHost   = var.encryption_at_host
            diskEncryptionSetId = "${each.value["diskEncryptionSetId"]}"
          }
        ]
        servicePrincipalProfile = {
          clientId             = "${each.value["client_id"]}"
          clientSecret         = sensitive("${each.value["client_secret"]}")
        }
        apiserverProfile = {
          visibility           = var.api_server_visibility
        }
        ingressProfiles = [
          {
            name               = var.ingress_profile_name
            visibility         = var.ingress_visibility
          }
        ]
      }
    })
    timeouts {
      create 	= "45m"
      read 	    = "35m"
      delete 	= "30m"
      update 	= "30m" 
    }
    lifecycle {
      ignore_changes = [
        tags
      ]
    }
}
