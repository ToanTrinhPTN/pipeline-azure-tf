locals {
  tags = {
    Project           = var.project
    Environment       = var.environment
    ResponsibileParty = var.responsible_party
    Owner             = var.owner
  }
}


module "azure_mysql" {
  source = "../modules/azure_mysql"

  prefix = var.prefix
  project = var.project
  environment = var.environment
  location_code = var.location_code
  location = var.location
  rg_name = var.resource_group_name

  db_name = var.db_name
  mysql_admin_user = var.mysql_admin_user
  mysql_admin_password = var.mysql_admin_password

  tags = local.tags
}

module "azure_appservice" {
  source = "../modules/azure_appservice"

  prefix = var.prefix
  project = var.project
  environment = var.environment
  location_code = var.location_code
  location = var.location
  rg_name = var.resource_group_name

  db_host = module.azure_mysql.db_host
  db_name = module.azure_mysql.db_name
  mysql_admin_user = var.mysql_admin_user
  mysql_admin_password = var.mysql_admin_password

  tags = local.tags

}

module "azure_acr" {
  
  source = "../modules/azure_acr"

  prefix = var.prefix
  project = var.project
  environment = var.environment
  location_code = var.location_code
  rg_name = var.resource_group_name
  location = var.location


}