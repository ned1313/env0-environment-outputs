variable "location" {
  type        = string
  description = "Azure region to use."
  default     = "eastus"
}

variable "environment" {
  type        = string
  description = "Environment to deploy (dev, test, prod)."
  default     = "dev"
}

variable "vnet_subnet_id" {
  type        = string
  description = "ID of the subnet to deploy the AKS cluster into."
}