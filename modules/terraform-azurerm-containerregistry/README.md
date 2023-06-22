# Azure Container Registry
## This module is for creating a ACR on azure.
Build, store, secure, scan, replicate, and manage container images and artifacts with a fully managed, geo-replicated instance of OCI distribution. Connect across environments, including Azure Kubernetes Service and Azure Red Hat OpenShift, and across Azure services like App Service, Machine Learning, and Batch. <br />
Use below template for reference: <br /> 
module "tig-3991_terraform-azurerm-containerregistry" { <br /> 
  source  = "terraform.icicibankltd.com/icicibank/tig-3991/azure//modules/terraform-azurerm-containerregistry" <br /> 
  version = "1.0.0" <br /> 
  // insert required variables here <br /> 
  // refer variable tab for all required and optional variables <br /> 
}
