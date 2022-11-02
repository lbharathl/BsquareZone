output "vnetid" {
    value = azurerm_virtual_network.ntier_vnet.id
  
}
output "resourcegroup_name" {
    value = azurerm_resource_group.bsquarezone.name
     
}
output "location" {
    value = azurerm_resource_group.bsquarezone.location
  
}
output "vnetname" {
    value = azurerm_virtual_network.ntier_vnet.name
  
}
output "subnetscount" {
    value = length(azurerm_subnet.ntier_subnets)
  
}