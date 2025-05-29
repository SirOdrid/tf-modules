location              = "West Europe"
tenant_id             = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"
subscription_id       = "xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx"

resource_group_name   = "platform"

app_service_plan_name = "myAppServicePlan"
app_service_plan_tier = "B1"
app_service_plan_size = "B1"

sql_server_name       = "tcdb"
sql_admin_username    = "root"
sql_admin_password    = "root"

sql_database_name     = "tcdb"
sql_database_sku      = "Basic"

firewall_rule_name    = "AllowAzureServices"
firewall_start_ip     = "0.0.0.0"
firewall_end_ip       = "0.0.0.0"

keyvault_name         = "myKeyVault"
keyvault_sku          = "standard"
keyvault_retention_days = 7
keyvault_purge_protection = true

acr_name              = "myContainerRegistry"
acr_sku               = "Basic"
acr_admin_enabled     = true

backend_app_name      = "myBackendApp"
backend_repo_url      = "https://github.com/myorg/middleware-app.git"
backend_branch        = "main"

frontend_app_name     = "myFrontendApp"
frontend_repo_url     = "https://github.com/myorg/frontend-app.git"
frontend_branch       = "main"
frontend_node_version = "18-lts"

storage_account_name              = "mystorageaccount01"
storage_account_tier              = "Standard"
storage_account_replication_type  = "LRS"