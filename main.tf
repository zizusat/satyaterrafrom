terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }

  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = "rg-terraform-github-actions-state"
    storage_account_name = "terraformgithubactions55"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_oidc              = true
    subscription_id      = "9b4f8ab9-0f32-4d9d-a63e-a9ad9e4c8eec"
   
  
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}

# Define any Azure resources to be created here. A simple resource group is shown here as a minimal example.
resource "azurerm_resource_group" "appgrp34" {
  name     = "app-grp34"
  location = "North Europe"
}
