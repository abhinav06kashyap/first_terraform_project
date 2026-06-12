terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0" #in production always give the version number
    }
  }
  backend "azurerm" {
    resource_group_name = "ak-terraform-storage"
    storage_account_name = "ak0terraform0storege"
    container_name = "ak-tfstate"
    key = "ak-terrorm-project.tfstate"
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  # subscription_id = var.subscription_id
  # client_id = var.client_id
  # client_secret = var.client_secret
  # tenant_id = var.tenant_id
}

# variable "client_id" {
#   type = string
# }
 
# variable "client_secret" {
#   type = string
# }
 
# variable "subscription_id" {
#   type = string
# }
 
# variable "tenant_id" {
#   type = string
# }
