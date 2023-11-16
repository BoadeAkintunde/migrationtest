# Virtual Network, Subnets and Subnet NSG's

# Virtual Network vnet_name
variable "vnet_name" {
    description = "Virtual Network Name"
    type = string
    default = "vnet_default"
}

# Virtual Network Addres space vnet_address_space
variable "vnet_address_space" {
    description = "Virtual Network Address Space"
    type = list(string)
    default = ["10.0.0.0/16"]
}

# Web Subnet Name web_subnet_name
variable "web_subnet_name" {
    description = "Virtual Network Subnet Name"
    type = string
    default = "websubnet"
}

# Web Subnet Addres Space web_subnet_address
variable "web_subnet_address" {
    description = "Virtual Network Web Subnet Address"
    type = list(string)
    default = ["10.0.1.0/24"]
}

# App Subnet Name app_subnet_name
variable "app_subnet_name" {
    description = "Virtual Network App Subnet Name"
    type = string
    default = "appsubnet"
}
# App Subnet Address Space app_subnet_address
variable "app_subnet_address" {
    description = "Virtual Network App Subnet Address"
    type = list(string)
    default = ["10.0.11.0/24"]
}

# Database Subnet Name db_subnet_name
variable "db_subnet_name" {
    description = "Virtual Network db Subnet Name"
    type = string
    default = "dbsubnet"
}
# Database Subnet Address Space db_subnet_address
variable "db_subnet_address" {
    description = "Virtual Network db Subnet Address"
    type = list(string)
    default = ["10.0.21.0/24"]
}

# Bastion / Management Subnet Name
variable "bastion_subnet_name" {
    description = "Virtual Network Bastion Subnet Name"
    type = string
    default = "bastionsubnet"
}

variable "bastion_subnet_address" {
    description = "Virtual Network Bastion Subnet Address"
    type = list(string)
    default = ["10.0.100.0/24"]
}
