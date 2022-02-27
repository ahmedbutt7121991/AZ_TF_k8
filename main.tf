## TERRAFORM DEFINATION ##
## PROVIDER DECLARATION ##

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.97.0"
    }
  }
}

module "rg_mod" {
  source = "./rg"
  rg_id = module.aks_mod.rg_id
  rg_name = module.aks_mod.rg_name
}

module "aks_mod" {
  source = "./aks"
  rg_id = module.aks_mod.rg_id
  rg_name = module.aks_mod.rg_name
}

module "acr_mod" {
  source = "./acr"
}