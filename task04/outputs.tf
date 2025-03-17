output "vm_public_ip" {
  description = "The public IP address of the Virtual Machine"
  value       = azurerm_public_ip.public_ip.ip_address
}

output "vm_fqdn" {
  description = "The fully qualified domain name of the Virtual Machine"
  value       = azurerm_public_ip.public_ip.fqdn
}
