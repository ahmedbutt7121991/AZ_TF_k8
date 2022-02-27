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
  rg_id = module.rg_mod.rg_id
  rg_name = module.rg_mod.rg_name
  rg_location = module.rg_mod.rg_location
}

module "aks_mod" {
  source = "./aks"
  rg_name = module.rg_mod.rg_name
  rg_location = module.rg_mod.rg_location
  rc_id = module.rc_mod.rc_id
}

module "acr_mod" {
  source = "./acr"
  rc_id = module.rc_mod.rc_id
  rg_name = module.rg_mod.rg_name
  rg_location = module.rg_mod.rg_location
}