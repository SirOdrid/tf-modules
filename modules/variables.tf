variable "location" {
  type = string
}

variable "tenant_id" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "app_service_plan_name" {
  type = string
}

variable "app_service_plan_tier" {
  type = string
}

variable "app_service_plan_size" {
  type = string
}

variable "sql_server_name" {
  type = string
}

variable "sql_admin_username" {
  type = string
}

variable "sql_admin_password" {
  type      = string
  sensitive = true
}

variable "sql_database_name" {
  type = string
}

variable "sql_database_sku" {
  type = string
}

variable "firewall_rule_name" {
  type = string
}

variable "firewall_start_ip" {
  type = string
}

variable "firewall_end_ip" {
  type = string
}

variable "keyvault_name" {
  type = string
}

variable "keyvault_sku" {
  type = string
}

variable "keyvault_retention_days" {
  type = number
}

variable "keyvault_purge_protection" {
  type = bool
}

variable "acr_name" {
  type = string
}

variable "acr_sku" {
  type = string
}

variable "acr_admin_enabled" {
  type = bool
}

variable "backend_app_name" {
  type = string
}

variable "backend_repo_url" {
  type = string
}

variable "backend_branch" {
  type = string
}

variable "frontend_app_name" {
  type = string
}

variable "frontend_repo_url" {
  type = string
}

variable "frontend_branch" {
  type = string
}

variable "frontend_node_version" {
  type = string
}

variable "subscription_id" {
  type = string
}

variable "storage_account_name" {
  type = string
}

variable "storage_account_tier" {
  type = string
}

variable "storage_account_replication_type" {
  type = string
}