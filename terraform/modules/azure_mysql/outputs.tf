output "db_host" {
  value = azurerm_mysql_server.wordpress.fqdn
}

output "db_name" {
  value = azurerm_mysql_database.wordpress.name
}