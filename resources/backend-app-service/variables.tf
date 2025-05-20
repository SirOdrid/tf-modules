variable "name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "service_plan_id" {
  type = string
}

variable "repo_url" {
  type = string
}

variable "branch" {
  type    = string
  default = "main"
}

variable "sql_server_fqdn" {
  type = string
}

variable "sql_database_name" {
  type = string
}

variable "sql_server_username" {
  type = string
}

variable "sql_server_password" {
  type      = string
  sensitive = true
}
