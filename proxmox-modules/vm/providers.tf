terraform {
  required_providers {
    proxmox = {
      source = "bpg/proxmox"
      version = var.proxmox_provider_version
    }
  }
}