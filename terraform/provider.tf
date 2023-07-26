terraform {
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
    # subscription_id = "174ef490-128c-49fe-9921-77f1134a884a"
    # client_id       = "a3cf1b56-abca-4eaa-b829-1afec52c6e4f"
    # client_secret   = "elV8Q~oDSDkF2HlcdVBZducYbLZLGBwhO7Dymabe"
    # tenant_id       = "b3da5948-48e5-42fc-8d9b-cd0f5a5c8ecb"
}