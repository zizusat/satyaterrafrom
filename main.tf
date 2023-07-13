provider "azurerm" {
  features {}
  use_oidc = true
}

resource "azurerm_resource_group" "oidc" {
  name     = "satyaoidc--test"
  location = "eu-west"
}
#my name
