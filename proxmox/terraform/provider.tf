terraform {
  required_providers {
    proxmox = {
      source  = "telmate/proxmox"
      version = ">= 2.9.0"
    }
  }
}

provider "proxmox" {
  pm_parallel     = 1
  pm_tls_insecure = true
  pm_api_url      = var.pm_api_url
  pm_api_token_id = "terraform-prov@pve!september14"
  #pm_password = var.pm_password
  #pm_user     = var.pm_user
  #pm_debug    = true
}
