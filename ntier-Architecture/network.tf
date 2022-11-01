resource "azurerm_resource_group" "ntier_rsgp" {
  name     = var.azurerm_resource_group
  location = var.location
}

resource "azurerm_virtual_network" "ntier_vnet" {
  name                = var.azurerm_virtual_network
  location            = var.location
  resource_group_name = azurerm_resource_group.ntier_rsgp.name
  address_space       = var.address_space

  depends_on = [
    azurerm_resource_group.ntier_rsgp
  ]

  tags = {
    Env = "Dev"
  }
}
resource "azurerm_subnet" "ntier_subnet" {
    name = var.azurerm_subnet
    resource_group_name = var.azurerm_resource_group
    virtual_network_name = var.azurerm_virtual_network
    address_prefixes = [ "10.10.0.0/24" ]
              
}
