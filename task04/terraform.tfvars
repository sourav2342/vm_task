location            = "East US"
resource_group_name = "cmaz-64aed6d7-mod4-rg"
vnet_name           = "cmaz-64aed6d7-mod4-vnet"
subnet_name         = "frontend"
public_ip_name      = "cmaz-64aed6d7-mod4-pip"
dns_label           = "cmaz-64aed6d7-mod4-nginx"
nsg_name            = "cmaz-64aed6d7-mod4-nsg"
nic_name            = "cmaz-64aed6d7-mod4-nic"
vm_name             = "cmaz-64aed6d7-mod4-vm"
admin_username      = "azureuser"
# NSG Rules
allow_http = "AllowHTTP"
allow_ssh  = "AllowSSH"

common_tags = {
  Creator = "raavi_sourav@epam.com"
}
