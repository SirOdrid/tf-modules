resource "azurerm_key_vault" "this" {
  name                        = var.name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = var.tenant_id
  sku_name                    = var.sku_name
  soft_delete_retention_days = var.retention_days
  purge_protection_enabled    = var.purge_protection
  enabled_for_disk_encryption = true
  enable_rbac_authorization   = true
}

output "id" {
  value = azurerm_key_vault.this.id
}