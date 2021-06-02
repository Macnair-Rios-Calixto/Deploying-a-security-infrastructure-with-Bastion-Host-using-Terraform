# Create a Subnet
resource "azurerm_subnet" "subnet" {
  name                   = var.subnet_int
  resource_group_name    = azurerm_resource_group.rg.name
  virtual_network_name   = azurerm_virtual_network.vn.name
  address_prefixes       = ["10.0.1.0/24"]
}

# Create a Subnet Bastion Host
resource "azurerm_subnet" "sub_bastion" {
  name                   = var.subnet_bastion
  resource_group_name    = azurerm_resource_group.rg.name
  virtual_network_name   = azurerm_virtual_network.vn.name
  address_prefixes       = ["10.0.100.224/27"]
}