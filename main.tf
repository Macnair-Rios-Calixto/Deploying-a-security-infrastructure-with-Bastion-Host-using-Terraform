# Provider
terraform {
  required_version = ">= 0.14, < 0.15"
}

provider "azurerm" {
    subscription_id   = "ba6c6fb3-39ec-47ae-aba8-0cf39a9c0a71"
    tenant_id         = "cfe27b9a-cb60-43dc-8de2-f0d296fb4e4a"
    features {}
}

# Resource Group
resource "azurerm_resource_group" "rg" {
  name     =  var.rgname
  location =  var.location
}

