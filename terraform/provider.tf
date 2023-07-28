terraform {
    backend "azurerm" {
    storage_account_name = "cs110032002555f0b2f"
    container_name       = "terraform"
    key                  = "test.tfstate"
    access_key           = "3s/7GoTpZTl6o3OIrl6Cy7D2UJCp8e/T/zGwhIE5JOEg4eXrDJGggq5VzrGYsEOubMo6BXmhnHc9+ASt7xCZfw=="
  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = "90802f8d-10f6-49cb-880c-ac7ef25a9a63"
  client_id = "11b68d5d-a9d8-4c67-b095-aee589641d23"
  client_secret = var.client_secret
  tenant_id       = "8b8f627d-40d6-4e75-9dcc-2650bf42d0ce"
}

