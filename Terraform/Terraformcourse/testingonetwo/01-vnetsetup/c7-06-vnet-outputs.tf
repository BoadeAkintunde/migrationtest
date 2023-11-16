# Virtual Network Outputs
## Virtual Network Name -

output "virtual_network_name" {
    description = "Virtual Network Name"
    value = azurerm_virtual_network.vnet.name  
}

## Virtual Network ID - virtual_network_id
output "virtual_network_id" {
    description = "Virtual Network ID"
    value = azurerm_virtual_network.vnet.id
}

#Subnet Outputs
## Subnet Name
output "web_subnet_name" {
  description = "Webtier subnet Name"
  value = azurerm_subnet.websubnet.name
}

## Subnet ID
output "web_subnet_id" {
    description = "Webtier Subnet ID"
    value = azurerm_subnet.websubnet.id
}

#Network Security Outputs
## Web Subnet NSG Name
output "web_subnet_nsg_name" {
  description = "Webtier subnet Name"
  value = azurerm_network_security_group.web_subnet_nsg.name
}

## web Subnet NSG ID
output "web_subnet_nsg_id" {
    description = "wentier subnet NSG Name"
    value = azurerm_network_security_group.web_subnet_nsg.id
}