### App Service ##
resource "azurerm_app_service_plan" "plan" {
  name                = "${var.prefix}-${var.project}-${var.environment}-appservice-${var.location_code}-plan"
  location            = var.location
  resource_group_name = var.rg_name
  kind                = "Linux"
  reserved            = true # must be true for Linux

  tags                = merge(var.tags, {
    ApplicationRole = "App service Plan for Wordpress"
    SensitiveData = false
  })

  sku {
    tier = var.appservice_plan_tier
    size = var.appservice_plan_size
  }
}

resource "azurerm_app_service" "app" {
  name                    = "${var.prefix}-${var.project}-${var.environment}-appservice-${var.location_code}-wordpress"
  location                = var.location
  resource_group_name     = var.rg_name
  app_service_plan_id     = azurerm_app_service_plan.plan.id
  https_only              = true
  client_affinity_enabled = false
  tags                	  = merge(var.tags, {
    ApplicationRole = "Wordpress Azure App Service"
    SensitiveData = true
  })

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE"    = "false"
    "WORDPRESS_DB_HOST"                      = var.db_host #azurerm_mysql_server.wordpress.fqdn
    "WORDPRESS_DB_NAME"                      = var.db_name #azurerm_mysql_database.wordpress.name
    "WORDPRESS_DB_USER"                      = var.mysql_admin_user
    "WORDPRESS_DB_PASSWORD"                  = var.mysql_admin_password
    "DOCKER_ENABLE_CI"                       = "true"
  }

  site_config {
    always_on        = true
    min_tls_version  = 1.2
    ftps_state       = "AllAllowed"
    linux_fx_version = "DOCKER|${var.wordpress_image}"
  }

  logs {

    http_logs {
      file_system {
        retention_in_days = 90
        retention_in_mb   = 50
      }
    }
  }
}
