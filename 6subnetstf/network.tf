resource "azurerm_resource_group" "my_rsgp" {
    name = var.azurerm_resource_group
    location = var.location
    tags = {
        Project = "Subnets",
        Env = "Test"
    }
  
}

resource "azurerm_virtual_network" "my_vnet" {
    name = var.azurerm_virtual_network
    resource_group_name = var.azurerm_resource_group
    location = var.location
    address_space = var.address_space
    #Explicit dependency till resource group is created
    depends_on = [
      azurerm_resource_group.my_rsgp
    ]
}

resource "azurerm_subnet" "my_subnet" {
    name = "subnet1"
    resource_group_name = var.azurerm_resource_group
    virtual_network_name = var.azurerm_virtual_network
    address_prefixes = ["10.10.0.0/24"]
    #Explicit dependency till vnet is created
    depends_on = [
      azurerm_virtual_network.my_vnet
    ]
  
}

resource "azurerm_subnet" "subnet2" {
    name = "subnet2"
    resource_group_name = var.azurerm_resource_group
    virtual_network_name = var.azurerm_virtual_network
    address_prefixes = ["10.10.1.0/24"]
    depends_on = [
      azurerm_subnet.my_subnet
    ]
  
}

resource "azurerm_subnet" "subnet3" {
    name = "subnet3"
    resource_group_name = var.azurerm_resource_group
    virtual_network_name = var.azurerm_virtual_network
    address_prefixes = ["10.10.2.0/24"]
    depends_on = [
      azurerm_subnet.subnet2
    ]
  
}

resource "azurerm_subnet" "subnet4" {
    name = "subnet4"
    resource_group_name = var.azurerm_resource_group
    virtual_network_name = var.azurerm_virtual_network
    address_prefixes = ["10.10.3.0/24"]
    depends_on = [
      azurerm_subnet.subnet3
    ]
  
}
resource "azurerm_subnet" "subnet5" {
    name = "subnet5"
    resource_group_name = var.azurerm_resource_group
    virtual_network_name = var.azurerm_virtual_network
    address_prefixes = ["10.10.4.0/24"]
    depends_on = [
      azurerm_subnet.subnet4
    ]
  
}
resource "azurerm_subnet" "subnet6" {
    name = "subnet6"
    resource_group_name = var.azurerm_resource_group
    virtual_network_name = var.azurerm_virtual_network
    address_prefixes = ["10.10.5.0/24"]
    depends_on = [
      azurerm_subnet.subnet5
    ]
  
}