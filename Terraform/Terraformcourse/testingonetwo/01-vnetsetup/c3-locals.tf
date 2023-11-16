# Define Local Value in Terraform
locals {
  owners = var.business_division
  environment = var.environment
  resource_group_prefix = "${var.business_division}-${var.environment}"
  common_tags = {
    owners = local.owners,
    environment = local.environment
  }
}


/*
explanation of the resource group prefix...say you want to use a name tag on your resource e.g
resource_group_prefix = "${var.business_division}-${var.environment}-vnet"
would result in sap-dev-vnet
*/