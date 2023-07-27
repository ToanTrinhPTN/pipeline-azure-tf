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
    # client_id       = "1073d38a-7d48-410f-b8f3-ee65fb14d1cf"
    client_id = "11b68d5d-a9d8-4c67-b095-aee589641d23"
    # client_secret   = "UP-8Q~7VcUHarU-S6pG9Kt_Tjsrwf2UsSdbqNcMs"
    client_secret = "O.i8Q~V1vYebDxQQdW2U4eGmGAzHI1T1eSu_ccwU"
    tenant_id       = "8b8f627d-40d6-4e75-9dcc-2650bf42d0ce"
}
# az login --service-principal -u 1073d38a-7d48-410f-b8f3-ee65fb14d1cf -p UP-8Q~7VcUHarU-S6pG9Kt_Tjsrwf2UsSdbqNcMs --tenant 8b8f627d-40d6-4e75-9dcc-2650bf42d0ce

# az ad sp create-for-rbac --name "myApp" --role contributor --scopes /subscriptions/90802f8d-10f6-49cb-880c-ac7ef25a9a63/resourceGroups/cloud-shell-storage-southeastasia --sdk-auth
# az ad sp create-for-rbac --sdk-auth
# {
#   "clientId": "11b68d5d-a9d8-4c67-b095-aee589641d23",
#   "clientSecret": "O.i8Q~V1vYebDxQQdW2U4eGmGAzHI1T1eSu_ccwU",
#   "subscriptionId": "90802f8d-10f6-49cb-880c-ac7ef25a9a63",
#   "tenantId": "8b8f627d-40d6-4e75-9dcc-2650bf42d0ce",
#   "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
#   "resourceManagerEndpointUrl": "https://management.azure.com/",
#   "activeDirectoryGraphResourceId": "https://graph.windows.net/",
#   "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
#   "galleryEndpointUrl": "https://gallery.azure.com/",
#   "managementEndpointUrl": "https://management.core.windows.net/"
# }