resource "proxmox_virtual_environment_file" "debian_cloud_image" {
  content_type = "iso"
  datastore_id = "local"
  node_name    = var.node_name

  source_file {
    path      = "https://cdimage.debian.org/images/cloud/bookworm/20240429-1732/debian-12-genericcloud-amd64-20240429-1732.qcow2"
    file_name = "debian-12-genericcloud-amd64-20240429-1732.img"
  }
}

resource "proxmox_virtual_environment_file" "cloud_config" {
  content_type = "snippets"
  datastore_id = "local"
  node_name    = var.node_name

  source_file {
    path = "${path.module}/cloud-init/user-data.yml"
  }
}
output "file_path" {
  value = "${path.module}/cloud-init/user-data.yml"
}