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

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "location_code" {
  type = string
}

variable "owner" {
  type = string
}

variable "responsible_party" {
  type = string
}

### MYSQL ###

variable "db_name" {
  type = string
}
variable "mysql_admin_user" {
  type = string
}
variable "mysql_admin_password" {
  type = string
}