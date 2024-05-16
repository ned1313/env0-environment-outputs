provider "azurerm" {
  features {}

}

resource "azurerm_resource_group" "main" {
  name     = "${var.environment}-env-out"
  location = var.location
}

module "network" {
  source  = "Azure/vnet/azurerm"
  version = "4.1.0"

  resource_group_name = azurerm_resource_group.main.name
  vnet_location       = azurerm_resource_group.main.location
  vnet_name           = azurerm_resource_group.main.name
  use_for_each        = true
  address_space       = [var.cidr]

  subnet_names    = keys(var.subnet_prefixes)
  subnet_prefixes = values(var.subnet_prefixes)
}