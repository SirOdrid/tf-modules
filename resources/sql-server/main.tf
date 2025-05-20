resource "azurerm_mssql_server" "this" {
  name                         = var.name
  location                     = var.location
  resource_group_name          = var.resource_group_name
  version                      = "12.0"
  administrator_login          = var.admin_username
  administrator_login_password = var.admin_password
}

output "id" {
  value = azurerm_mssql_server.this.id
}

output "fqdn" {
  value = azurerm_mssql_server.this.fully_qualified_domain_name
}
