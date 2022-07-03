variable "esxi_hostname" {
  description = "ESXi hostname - set using TF_VAR_esxi_hostname environment variable"
  type        = string
}

variable "esxi_hostport" {
  type    = string
  default = "22"
}

variable "esxi_hostssl" {
  type    = string
  default = "443"
}

variable "esxi_username" {
  type    = string
  default = "root"
}

variable "esxi_password" {
  description = "ESXi password - set using TF_VAR_esxi_password environment variable"
  type        = string
}

variable "virtual_network" {
  default = "VM Network"
}

variable "disk_store" {
  default = "DiskStore01"
}

variable "vm_hostname" {
  default = "vmtest05"
}

