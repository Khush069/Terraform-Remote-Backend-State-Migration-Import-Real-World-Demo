provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "state_test" {
  name     = "rg-terraform-state-test"
  location = "eastus"

  tags = {
    env = "test"
  }

  lifecycle {
    ignore_changes = [tags.owner]
  }
}

resource "azurerm_resource_group" "imported" {
  name     = "rg-import-demo"
  location = "eastus"
}
