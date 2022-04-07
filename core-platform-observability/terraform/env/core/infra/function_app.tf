resource "azurerm_function_app" "default" {
  name                       = module.global.resource_names.function_app
  location                   = azurerm_resource_group.default.location
  resource_group_name        = azurerm_resource_group.default.name
  app_service_plan_id        = azurerm_app_service_plan.default.id
  storage_account_name       = azurerm_storage_account.default.name
  storage_account_access_key = azurerm_storage_account.default.primary_access_key
  os_type                    = "linux"
  version                    = "~4"
  https_only                 = true

  app_settings = {
    FUNCTIONS_WORKER_RUNTIME       = "dotnet"
    APPINSIGHTS_INSTRUMENTATIONKEY = var.app_insights_ikey
    FUNCTIONS_EXTENSION_VERSION    = "~4"
  }
  tags = merge(
    module.global.resource_tags,
    {}
  )
}