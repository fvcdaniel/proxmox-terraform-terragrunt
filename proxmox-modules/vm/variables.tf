variable "name" {
  description = "The name of the VM"
  type        = string
}

variable "description" {
  description = "The description of the VM"
  type        = string
}

variable "tags" {
  description = "The tags of the VM"
  type        = list(string)
  default = [ "terraform" ]
}

variable "node_name" {
    description = "The name of the node"
    type        = string
}

variable "cpu_cores" {
    description = "The number of CPU cores"
    type        = number
    default = 1
}

variable "memory_dedicated" {
    description = "The amount of dedicated memory in MB"
    type        = number
    default = 2048 
}

variable "disk_interface" {
    description = "The disk interface"
    type        = string
    default = "scsi0"
  
}

variable "disk_size" {
    description = "The disk size in GB"
    type        = number
    default = 32 
}

variable "disk_datastore_id" {
    description = "The datastore ID for the disk"
    type        = string
    default = "nvme"
}

variable "vm_path" {
    description = "The path to the VM"
    type        = string
    default = "https://cdimage.debian.org/images/cloud/bookworm/20240429-1732/debian-12-genericcloud-amd64-20240429-1732.qcow2"
  
}

variable "vm_file_name" {
    description = "The name of the VM file"
    type        = string
    default = "debian-12-genericcloud-amd64-20240429-1732.img"
  
}

variable "proxmox_provider_version" {}