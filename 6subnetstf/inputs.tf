variable "azurerm_resource_group" {
    type = string
    default = "testing6subnets"
}
variable "location" {
    type = string
    default = "westus"
}
variable "azurerm_virtual_network" {
    type = string
    default = "vnet_from_tf"
}
variable "address_space" {
    type = list(string)
    default = [ "10.10.0.0/16" ]
}

