resource "azurerm_mysql_server" "wordpress" {
  name                = "${var.prefix}-${var.project}-${var.environment}-mysql-${var.location_code}-wordpress"
  location            = var.location
  resource_group_name = var.rg_name
  tags                = merge(var.tags, {
    ApplicationRole = "Database for Wordpress application"
    SensitiveData = true
  })

  administrator_login          = var.mysql_admin_user
  administrator_login_password = var.mysql_admin_password

  sku_name   = "B_Gen5_1"
  storage_mb = 5120 
  version    = "8.0"

  auto_grow_enabled                 = true
  backup_retention_days             = 7
  geo_redundant_backup_enabled      = false
  public_network_access_enabled     = true 
  ssl_enforcement_enabled           = false 
  ssl_minimal_tls_version_enforced  = "TLSEnforcementDisabled"
}

resource "azurerm_mysql_database" "wordpress" {
  name                = "${var.db_name}"
  resource_group_name = var.rg_name
  server_name         = azurerm_mysql_server.wordpress.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}

resource "azurerm_mysql_firewall_rule" "azure" {
  name                = "${var.prefix}-${var.project}-${var.environment}-fw-${var.location_code}-mysql"
  resource_group_name = var.rg_name
  server_name         = azurerm_mysql_server.wordpress.name
  start_ip_address    = "0.0.0.0"
  end_ip_address      = "255.255.255.255"
}
