terraform {
  backend "azurerm" {
    resource_group_name  = "ap-uks-sub-nonprod-base-infra-rg"
    storage_account_name = "apukssubnpbseinfsa"
    container_name       = "tfstate"
    key                  = "acp-env-core-observability"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.87.0"
    }
  }

  required_version = "~> 1.1.0"
}

provider "azurerm" {
  features {}
}