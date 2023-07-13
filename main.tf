provider "azurerm" {
  features {}
  use_oidc = true
}

resource "azurerm_resource_group" "oidc" {
  name     = "satyaoidc--test"
  location = "australiaeast"
}
#my name
