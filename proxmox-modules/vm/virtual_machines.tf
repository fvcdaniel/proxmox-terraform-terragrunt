resource "proxmox_virtual_environment_vm" "vm" {
  name        = var.name
  description = var.description
  tags        = var.tags
  node_name   = var.node_name 

  cpu {
    cores = var.cpu_cores
  }

  memory {
    dedicated = var.memory_dedicated
  }

  agent {
    enabled = true
  }

  network_device {
    bridge = "vmbr0"
  }

  disk {
    datastore_id = var. 
    file_id      = proxmox_virtual_environment_file.debian_cloud_image.id
    # interface    = "scsi0"
    interface    = var.disk_interface
    size         = var.disk_size
  }

  serial_device {} # The Debian cloud image expects a serial port to be present

  operating_system {
    type = "l26" # Linux Kernel 2.6 - 5.X.
  }

  initialization {
    datastore_id = "local-lvm"
    user_data_file_id = proxmox_virtual_environment_file.cloud_config.id
    ip_config {
      ipv4 {
        address = "dhcp"
      }
    }
  }
}
