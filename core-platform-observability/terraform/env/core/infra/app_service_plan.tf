resource "azurerm_app_service_plan" "default" {
  name                = module.global.resource_names.service_plan
  resource_group_name = azurerm_resource_group.default.name
  location            = azurerm_resource_group.default.location
  kind                = "FunctionApp"
  reserved            = true

  sku {
    size = "Y1"
    tier = "Dynamic"
  }
  tags = merge(
    module.global.resource_tags,
    {}
  )
}