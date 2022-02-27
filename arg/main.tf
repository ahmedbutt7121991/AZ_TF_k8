resource "azurerm_resource_group" "rg_az_k8" {
  name     = var.name
  location = var.location
}