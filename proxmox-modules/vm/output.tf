output "name" {
  value = proxmox_virtual_environment_vm.vm.name
}

output "ipv4_addresses" {
  value = proxmox_virtual_environment_vm.vm.ipv4_addresses
}

output "instance_id" {
  value = "${join(",", proxmox_virtual_environment_vm.vm.*.id)}"
}