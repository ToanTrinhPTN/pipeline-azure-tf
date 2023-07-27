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
  
  subscription_id = "90802f8d-10f6-49cb-880c-ac7ef25a9a63"
  # client_id       = "1073d38a-7d48-410f-b8f3-ee65fb14d1cf"
  client_id = "6077bda1-02fd-4eab-b3c8-c1b30cd3b7f4"
  # client_secret   = "UP-8Q~7VcUHarU-S6pG9Kt_Tjsrwf2UsSdbqNcMs"
  client_secret = "bF28Q~~~G_xRlfjhWQTvljC.F9M13YBWQbRNVaFm"
  tenant_id       = "8b8f627d-40d6-4e75-9dcc-2650bf42d0ce"
  
}
# az login --service-principal -u 1073d38a-7d48-410f-b8f3-ee65fb14d1cf -p UP-8Q~7VcUHarU-S6pG9Kt_Tjsrwf2UsSdbqNcMs --tenant 8b8f627d-40d6-4e75-9dcc-2650bf42d0ce

# az ad sp create-for-rbac --name "myApp" --role contributor --scopes /subscriptions/90802f8d-10f6-49cb-880c-ac7ef25a9a63/resourceGroups/cloud-shell-storage-southeastasia --sdk-auth
# az ad sp create-for-rbac --sdk-auth