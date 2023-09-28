terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.70.0"
    }
  }
  backend "azurerm" {
    container_name = "sunnycontainer"
    key = "sunny.terraform.tfstate"
    resource_group_name = "sunnyrg" 
    storage_account_name = "sunnysa"
  }
}
provider "azurerm" {
  features {
    
  }
}