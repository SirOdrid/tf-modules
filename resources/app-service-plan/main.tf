resource "azurerm_app_service_plan" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "Linux"
  reserved            = true

  sku {
    tier = var.tier
    size = var.size
  }
}

output "id" {
  value = azurerm_app_service_plan.this.id
}