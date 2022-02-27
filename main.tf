terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.97.0"
    }
  }
}

module "arg_mod" {
  source = "./rg"
  rg_id = module.arg_mod.rg_id
  rg_name = module.arg_mod.rg_name
  rg_location = module.arg_mod.rg_location
}

module "aks_mod" {
  source = "./aks"
  rg_name = module.arg_mod.rg_name
  rg_location = module.arg_mod.rg_location
  rc_id = module.acr_mod.rc_id
}

module "acr_mod" {
  source = "./acr"
  rc_id = module.acr_mod.rc_id
  rg_name = module.arg_mod.rg_name
  rg_location = module.arg_mod.rg_location
}