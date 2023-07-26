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
    # subscription_id = "90802f8d-10f6-49cb-880c-ac7ef25a9a63"
    # client_id       = "1073d38a-7d48-410f-b8f3-ee65fb14d1cf"
    # client_secret   = "UP-8Q~7VcUHarU-S6pG9Kt_Tjsrwf2UsSdbqNcMs"
    # tenant_id       = "8b8f627d-40d6-4e75-9dcc-2650bf42d0ce"
}
# az login --service-principal -u 1073d38a-7d48-410f-b8f3-ee65fb14d1cf -p UP-8Q~7VcUHarU-S6pG9Kt_Tjsrwf2UsSdbqNcMs --tenant 8b8f627d-40d6-4e75-9dcc-2650bf42d0ce