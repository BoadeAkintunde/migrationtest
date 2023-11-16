# Generic Input Variables

# Business Division
variable "business_division" {
    description = "Business Division in the large org..."
    type = string
    default = "sap"
}

# Environmental Variable
variable "environment" {
  description = "Environment Variable used as a prefix"
  type = string
  default = "dev"
}

# Azure Resource Group Name
variable "resource_group_name" {
  description = "resource group name"
  default = "rg-default"
}

# Azure Resources Location
variable "resource_group_location" {
  description = "resource group location"
  default = "eastus2"
}