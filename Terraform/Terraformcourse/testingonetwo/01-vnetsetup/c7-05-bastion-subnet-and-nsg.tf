# Resource-1 : Create Webtier Subnet
resource "azurerm_subnet" "bastionsubnet" {
  name = "${azurerm_virtual_network.vnet.name}-${var.bastion_subnet_name}"
  resource_group_name = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes = var.bastion_subnet_address
}

# Resource-2: Create Network Secuirty Group (NSG)
resource "azurerm_network_security_group" "bastion_subnet_nsg" {
  name = "${azurerm_subnet.bastionsubnet.name}-nsg"
  location = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

# Resource-3: Associate NSG and Subnet
resource "azurerm_subnet_network_security_group_association" "bastion_subnet_nsg_association" {
  depends_on = [ azurerm_network_security_rule.bastion_nsg_rule_inbound ]#Every NSG Rule Association will dissociate NSG from
  #Subnet and Associate it, so we associate it only after NSG is completely created _ Azure Provider  
  subnet_id = azurerm_subnet.bastionsubnet.id
  network_security_group_id = azurerm_network_security_group.bastion_subnet_nsg.id
}
# Resource-4: Create NSG Rules
## Locals Block for Secuirty Rules
locals {
  bastion_inbound_ports_map = {
    "100" : "22", #if the key starts with a number, you must use the colon syntax ":" instead of "="
    "110" : "3389"
  }
}
## NSG Inbound Rule for WebTier Subnets

resource "azurerm_network_security_rule" "bastion_nsg_rule_inbound" {
  for_each =  local.bastion_inbound_ports_map
  name                        = "Rule-Port-${each.value}"
  priority                    = each.key
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = each.value
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.rg.name
  network_security_group_name = azurerm_network_security_group.bastion_subnet_nsg.name
}