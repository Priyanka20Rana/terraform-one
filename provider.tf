terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.58.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "d35bdc6e-160c-43c0-8640-db1dcc21d896"
  features{}
}