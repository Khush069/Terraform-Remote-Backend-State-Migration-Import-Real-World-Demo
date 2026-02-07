output "resource_group_name" {
  value       = azurerm_resource_group.state_test.name
  description = "Name of the resource group created by Terraform"
}

output "resource_group_location" {
  value       = azurerm_resource_group.state_test.location
  description = "Azure region of the resource group"
}

output "resource_group_id" {
  value       = azurerm_resource_group.state_test.id
  description = "Resource ID of the resource group"
}
