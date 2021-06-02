resource "azurerm_bastion_host" "bastion" {
  name                    = var.bastion_host
  location                = var.location
  resource_group_name     = azurerm_resource_group.rg.name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = azurerm_subnet.sub_bastion.id
    public_ip_address_id = azurerm_public_ip.pip_bastion.id
  }
}