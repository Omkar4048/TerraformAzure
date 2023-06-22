resource "azurerm_resource_group_template_deployment" "ARO_Cluster" {
  name                	= var.aro_name  
  resource_group_name 	= var.resource_group_name  
  deployment_mode 	= var.deployment_mode
  parameters_content = jsonencode({
	  	"name" = {
			value = var.aro_name
		}
		"domain" = {
			value = var.domain
		}
		"fipsValidatedModules" = {
			value = var.fipsValidatedModules
		}
		"version" = {
			value = var.aro_version
		}
		"resourceGroupId" = {
			value = var.rg_id
		}
		"pullSecret" = {
			value = sensitive((file("${path.root}/pull_secret.txt")))
		}
	  	"clientId" = {
			value = var.client_id
		}
	  	"clientSecret" = {
			value = var.client_secret
		}
		"podCidr" = {
			value = var.pod_cidr
		}	  
	  	"serviceCidr" = {
			value = var.service_cidr
		}
	  	"master_vmSize" = {
			value = var.master_vmsize
		}
	  	"master_subnetId" = {
			value = var.master_subnet_id
		}
	  	"master_encryptionAtHost" = {
			value = var.master_encryption
		}
	  	"master_diskEncryptionSetId" = {
			value = var.master_disk_encryption
		}
	  	"worker_name" = {
			value = var.worker_name
		}
	  	"worker_vm_size" = {
			value = var.worker_vm_size
		}
	  	"worker_disk_size" = {
			value = var.worker_disk_size
		}
	  	"worker_subnet_id" = {
			value = var.worker_subnet_id
		}
	  	"worker_count" = {
			value = var.worker_count
		}
	  	"worker_encryption" = {
			value = var.worker_encryption
		}
	  	"worker_disk_encryption" = {
			value = var.worker_disk_encryption
		}
	  	"visibility" = {
			value = var.api_server_visibility
		}
	  	"ingress_profile_name" = {
			value = var.ingress_profile_name
		}
	  	"ingress_visibility" = {
			value = var.ingress_visibility
		}
  })
    template_content 	= <<TEMPLATE
{
	"$schema": "https://schema.management.azure.com/schemas/2019-04-01/deploymentTemplate.json#",
	"contentVersion": "1.0.0.0",
	"parameters": {
		"name" : {
			"type" : "string",
			"defaultValue" : "[parameters('name')]"
		},
		"domain" : {
			"type" : "string"
		},
		"fipsValidatedModules" : {
			"type" : "string"
		},
		"version" : {
			"type" : "string"
		},
		"resourceGroupId" : {
			"type" : "string"
		},
		"pullSecret" : {
			"type" : "string"
		},
		"clientId" : {
			"type" : "string"
		},
		"clientSecret": {
			"type" : "string"
		},
		"podCidr" : {
			"type" : "string"
		},
		"serviceCidr" : {
			"type" : "string"
		},
		"master_vmSize" : {
			"type" : "string"
		},
		"master_subnetId" : {
			"type" : "string"
		},
		"master_encryptionAtHost" : {
			"type" : "string"
		},
		"master_diskEncryptionSetId" : {
			"type" : "string"
		},
		"worker_name" : {
			"type" : "string"
		},
		"worker_vm_size" : {
			"type" : "string"
		},
		"worker_disk_size" : {
			"type" : "int"
		},
		"worker_subnet_id" : {
			"type" : "string"
		},
		"worker_count" : {
			"type" : "int"
		},
		"worker_encryption" : {
			"type" : "string"
		},
		"worker_disk_encryption" : {
			"type" : "string"
		},
		"visibility" : {
			"type" : "string"
		},
		"ingress_profile_name" : {
			"type" : "string"
		},
		"ingress_visibility" : {
			"type" : "string"
		}
	},
	"resources": [{
		"type": "Microsoft.RedHatOpenShift/openShiftClusters",
		"apiVersion": "2022-09-04",
		"name": "[parameters('name')]",
		"location": "centralindia",
		"properties": {
			"clusterProfile": {
				"domain": "[parameters('domain')]",
				"version": "[parameters('version')]",
				"resourceGroupId": "[parameters('resourceGroupId')]",
				"fipsValidatedModules": "[parameters('fipsValidatedModules')]",
				"pullSecret": "[parameters('pullSecret')]"
			},
			"servicePrincipalProfile": {
				"clientId": "[parameters('clientId')]",
				"clientSecret" : "[parameters('clientSecret')]"
			},
			"networkProfile": {
				"podCidr": "[parameters('podCidr')]",
				"serviceCidr": "[parameters('serviceCidr')]"
			},
			"masterProfile": {
				"vmSize": "[parameters('master_vmSize')]",
				"subnetId": "[parameters('master_subnetId')]",
				"encryptionAtHost": "[parameters('master_encryptionAtHost')]",
				"diskEncryptionSetId": "[parameters('master_diskEncryptionSetId')]"
			},
			"workerProfiles": [{
					"name": "[parameters('worker_name')]",
					"vmSize": "[parameters('worker_vm_size')]",
					"diskSizeGB": "[parameters('worker_disk_size')]",
					"subnetId": "[parameters('worker_subnet_id')]",
					"count": "[parameters('worker_count')]",
					"encryptionAtHost": "[parameters('worker_encryption')]",
					"diskEncryptionSetId": "[parameters('worker_disk_encryption')]"
			}],
			"apiserverProfile": {
				"visibility": "[parameters('visibility')]"
			},
			"ingressProfiles": [{
				"name": "[parameters('ingress_profile_name')]",
				"visibility": "[parameters('ingress_visibility')]"
			}]
		}
	}]
}
TEMPLATE
tags = var.aro_tags
lifecycle {
       ignore_changes = [tags]
       
    }
}
