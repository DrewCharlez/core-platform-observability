output "RESOURCE_GROUP_NAME" {
  description = "Resource Group name."
  value       = azurerm_resource_group.default.name
  sensitive   = false
}
output "FUNCTION_APP_NAME" {
  value = azurerm_function_app.default.name
}