module "resource_group" {
  source = "./resources/resource_group"
  name   = var.resource_group_name
  location = var.location
}

module "app_service_plan" {
  source              = "./resources/app_service_plan"
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = module.resource_group.name
  tier                = var.app_service_plan_tier
  size                = var.app_service_plan_size
}

module "sql_server" {
  source              = "./resources/sql_server"
  name                = var.sql_server_name
  location            = var.location
  resource_group_name = module.resource_group.name
  admin_username      = var.sql_admin_username
  admin_password      = var.sql_admin_password
}

module "sql_database" {
  source    = "./resources/sql_database"
  name      = var.sql_database_name
  server_id = module.sql_server.id
  sku_name  = var.sql_database_sku
}

module "firewall_rule" {
  source           = "./resources/firewall_rule"
  name             = var.firewall_rule_name
  server_id        = module.sql_server.id
  start_ip_address = var.firewall_start_ip
  end_ip_address   = var.firewall_end_ip
}

module "keyvault" {
  source              = "./resources/keyvault"
  name                = var.keyvault_name
  location            = var.location
  resource_group_name = module.resource_group.name
  tenant_id           = var.tenant_id
  sku_name            = var.keyvault_sku
  retention_days      = var.keyvault_retention_days
  purge_protection    = var.keyvault_purge_protection
}

module "acr" {
  source              = "./resources/acr"
  name                = var.acr_name
  location            = var.location
  resource_group_name = module.resource_group.name
  sku                 = var.acr_sku
  admin_enabled       = var.acr_admin_enabled
}

module "backend_app_service" {
  source              = "./resources/backend_app_service"
  name                = var.backend_app_name
  location            = var.location
  resource_group_name = module.resource_group.name
  service_plan_id     = module.app_service_plan.id
  repo_url            = var.backend_repo_url
  branch              = var.backend_branch
  sql_server_fqdn     = module.sql_server.fqdn
  sql_database_name   = var.sql_database_name
  sql_server_username = var.sql_admin_username
  sql_server_password = var.sql_admin_password
}

module "frontend_app_service" {
  source              = "./resources/frontend_app_service"
  name                = var.frontend_app_name
  location            = var.location
  resource_group_name = module.resource_group.name
  service_plan_id     = module.app_service_plan.id
  repo_url            = var.frontend_repo_url
  branch              = var.frontend_branch
  backend_url         = module.backend_app_service.hostname
  node_version        = var.frontend_node_version
}

module "storage_account" {
  source              = "./resources/storage_account"
  name                = var.storage_account_name
  location            = var.location
  resource_group_name = module.resource_group.name
  account_tier        = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}