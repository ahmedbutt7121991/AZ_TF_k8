resource "azurerm_container_registry" "azure_rg_kube" {
  name                = var.name
  resource_group_name = azurerm_resource_group.azure_rg_kube.name
  location            = azurerm_resource_group.azure_rg_kube.location
}