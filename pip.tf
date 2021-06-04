# Create a public IP Bastion
resource "azurerm_public_ip" "pip_bastion" {
  name                  = var.pip_bastion
  resource_group_name   = azurerm_resource_group.rg.name
  location              = var.location
  allocation_method     = "Static"
  sku                   = "Standard"
}