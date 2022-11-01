variable "azurerm_resource_group" {
  type    = string
  default = "ntier-architecture"

}

variable "location" {
  type    = string
  default = "eastus"

}

variable "azurerm_virtual_network" {
  type    = string
  default = "ntier-vnet"

}

variable "address_space" {
  type    = list(string)
  default = ["10.10.0.0/16"]

}
variable "azurerm_subnet" {
    type = list(string)
    default = ["app", "web", "db"]
  
}
