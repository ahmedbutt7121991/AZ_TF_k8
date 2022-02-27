resource "azurerm_kubernetes_cluster" "kc_az_k8" {
  name                = var.name
  location            = var.rg_location
  resource_group_name = var.rg_name
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

resource "azurerm_role_assignment" "ra_az_k8" {
  principal_id                     = azurerm_kubernetes_cluster.kc_az_k8.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = var.rc_id
  skip_service_principal_aad_check = true
}