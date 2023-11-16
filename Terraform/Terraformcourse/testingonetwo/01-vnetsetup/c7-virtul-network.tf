# Create Virtual Network

resource "azurerm_virtual_network" "vnet" {
  name =  "${local.resource_group_prefix}-${var.vnet_name}"
  resource_group_name = azurerm_resource_group.rg.name
  address_space = var.vnet_address_space
  location = azurerm_resource_group.rg.location
  tags = local.common_tags
}