variable "name" {
  default = "kubernetes_cluster_1"
}
variable "dns_prefix" {
  default = "cluster1"
}

variable "node_count" {
  default = 1
}
variable "vm_size" {
  default = "Standard_D2_v2"
}

variable "identity_type" {
  default = "SystemAssigned"
}
variable "env_tag" {
  default = "Testing"
}

variable "role_name" {
  default = "CR_Rules"
}

variable "rc_id" {}

variable "rg_name" {}

variable "rg_location" {}