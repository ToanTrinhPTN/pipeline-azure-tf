### COMMON ###
variable "prefix" {
    type = string
}
variable "project" {
    type = string
}
variable "environment" {
    type = string
}
variable "location_code" {
    type = string
}
variable "location" {
    type = string
}
variable "rg_name" {
    type = string
}
variable "tags" {
    type = any
}

###### Storage Account #####

variable "storage_account_tier" {
    type = string
    default = "Standard"
}
variable "storage_account_replication" {
    type = string
    default = "LRS"
}

#### CDN ####

variable "cdn_sku" {
    type = string
    default = "Standard_Microsoft"
}

### App Service ##

variable "appservice_plan_tier" {
    type = string
    default = "PremiumV2"
}
variable "appservice_plan_size" {
    type = string
    default = "P1v2"
}
variable "db_host" {
    type = string
}
variable "db_name" {
    type = string
}
variable "mysql_admin_user" {
    type = string
}
variable "mysql_admin_password" {
    type = string
}
variable "wordpress_image" {
    type = string
    default = "wordpress:6.2"
}
