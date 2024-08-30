variable "location" {
  description = "The Azure region to deploy resources"
  default     = "East US 2"
}

variable "resource_group_name" {
  description = "The name of the resource group"
  default     = "rg-devops-lb-test"
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  default     = "acrdevopslbtechtest"
}

variable "aks_name" {
  description = "The name of the Azure Kubernetes Service cluster"
  default     = "aks-devops-lb-test"
}
