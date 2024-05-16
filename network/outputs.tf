output "subnet_ids" {
  description = "Map of subnet names to IDs."
  value       = module.network.vnet_subnets_name_id
}

output "aks_subnet_id" {
  description = "ID of the subnet to deploy the AKS cluster into."
  value       = module.network.vnet_subnets_name_id["aks"]
}

output "vnet_id" {
  description = "VNet ID."
  value       = module.network.vnet_id
}

output "environment" {
  description = "Environment used for deployment"
  value       = var.environment
}