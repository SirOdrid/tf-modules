resource "azurerm_linux_web_app" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = var.service_plan_id

  site_config {
    application_stack {
      node_version = var.node_version
    }
  }

  app_settings = {
    BACKEND_URL = var.backend_url
  }

#   source_control {
#     repo_url               = var.repo_url
#     branch                 = var.branch
#     use_manual_integration = true
#   }
}