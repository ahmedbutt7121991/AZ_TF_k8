resource "azurerm_kubernetes_cluster" "kube_cluster_1" {
  name                = var.name
  location            = azurerm_resource_group.azure_rg_kube.location
  resource_group_name = azurerm_resource_group.azure_rg_kube.name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = var.identity_type
  }

  tags = {
    Environment = var.env_tag
  }
}