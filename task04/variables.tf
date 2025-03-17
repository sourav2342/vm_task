variable "location" {
  type        = string
  description = "Azure region where resources will be deployed"
  default     = "East US"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
  default     = "cmaz-64aed6d7-mod4-rg"
}

variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
  default     = "cmaz-64aed6d7-mod4-vnet"
}

variable "subnet_name" {
  type        = string
  description = "Name of the subnet"
  default     = "frontend"
}

variable "public_ip_name" {
  type        = string
  description = "Name of the public IP"
  default     = "cmaz-64aed6d7-mod4-pip"
}

variable "dns_label" {
  type        = string
  description = "DNS name label for the public IP"
  default     = "cmaz-64aed6d7-mod4-nginx"
}

variable "nsg_name" {
  type        = string
  description = "Name of the Network Security Group"
  default     = "cmaz-64aed6d7-mod4-nsg"
}

variable "nic_name" {
  type        = string
  description = "Name of the network interface"
  default     = "cmaz-64aed6d7-mod4-nic"
}

variable "vm_name" {
  type        = string
  description = "Name of the virtual machine"
  default     = "cmaz-64aed6d7-mod4-vm"
}

variable "admin_username" {
  type        = string
  description = "Admin username for the virtual machine"
  default     = "azureuser"
}

variable "vm_password" {
  type        = string
  description = "Password for the virtual machine"
  sensitive   = true
}

variable "allow_http" {
  description = "Name of the NSG rule to allow HTTP traffic"
  type        = string
  default     = "AllowHTTP"
}

variable "allow_ssh" {
  description = "Name of the NSG rule to allow SSH traffic"
  type        = string
  default     = "AllowSSH"
}

variable "common_tags" {
  description = "Common tags for all resources"
  type        = map(string)
}

variable "public_ip_allocation_method" {
  description = "Defines whether the public IP allocation is Static or Dynamic"
  type        = string
  default     = "Static"
}


variable "private_ip_allocation_method" {
  description = "Defines whether the private IP allocation is Dynamic or Static"
  type        = string
  default     = "Dynamic"
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
  default     = "Standard_F2s_v2"
}

variable "os_disk_storage_account_type" {
  description = "Type of storage account for the OS disk"
  type        = string
  default     = "Standard_LRS"
}

variable "image_publisher" {
  description = "Publisher of the image"
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "Offer of the image"
  type        = string
  default     = "0001-com-ubuntu-server-focal"
}

variable "image_sku" {
  description = "SKU of the image"
  type        = string
  default     = "22_04-lts"
}

variable "image_version" {
  description = "Version of the image"
  type        = string
  default     = "latest"
}

variable "subnet_address_prefixes" {
  description = "Address prefixes for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "ip_configuration_name" {
  description = "Name of the IP configuration"
  type        = string
  default     = "ipconfig1"
}

variable "os_disk_caching" {
  description = "Defines the caching behavior of the OS disk"
  type        = string
  default     = "ReadWrite"
}

variable "connection_type" {
  type        = string
  default     = "ssh"
  description = "Defines connections"
}

variable "vm_setup_commands" {
  description = "List of commands to configure the VM"
  type        = list(string)
  default = [
    "sudo apt update",
    "sudo apt install -y nginx",
    "sudo systemctl start nginx",
    "sudo systemctl enable nginx"
  ]
}
