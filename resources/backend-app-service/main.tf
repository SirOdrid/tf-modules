resource "azurerm_linux_web_app" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  site_config {
    application_stack {
      java_version = "17"
      java_server  = "JAVA"
    }
  }

  app_settings = {
    DATABASE_URL = "jdbc:sqlserver://${var.sql_server_fqdn}:3306;database=${var.sql_database_name};user=${var.sql_server_username};password=${var.sql_server_password};encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.database.windows.net;loginTimeout=30;"
  }

#   source_control {
#     repo_url               = var.repo_url
#     branch                 = var.branch
#     use_manual_integration = true
#   }
}

output "hostname" {
  value = azurerm_linux_web_app.this.default_hostname
}