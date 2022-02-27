resource "azurerm_container_registry" "rc_az_k8" {
  name                = var.name
  resource_group_name = var.rg_name
  location            = var.rg_location
}