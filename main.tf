provider "azurerm" {
  features {}
  use_oidc = true
}

resource "azurerm_resource_group" "oidc" {
  name     = "satyaoidc"
  location = "North Europe"
}
#my name
