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
}

variable "allow_ssh" {
  description = "Name of the NSG rule to allow SSH traffic"
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
}