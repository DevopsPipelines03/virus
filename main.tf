terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.21.1"
    }
  }
}


provider "azurerm" {
 
  subscription_id = "ccb4c6f3-1186-4eb9-8185-575f14c30f7e"   
  tenant_id = "5d6f937a-c760-4c88-8993-5ad91853529f"   
  client_id = "1fc19dec-06d4-4afa-9713-573e6b5ffe8e"
  client_secret = "Jgk8Q~faOUVdptacniiyymEIg5hiBX9LuLBalcoU"
  features {}
 
}


resource "azurerm_resource_group" "googleresougroup" {
  name     = "pipeline"
  location = "Central India"
}

resource "azurerm_storage_account" "googlestorate" {
  name                     = "storageaccountname8790"
  resource_group_name      = azurerm_resource_group.googleresougroup.name
  location                 = azurerm_resource_group.googleresougroup.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}
