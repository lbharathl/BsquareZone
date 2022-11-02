# Main file for defining resource - step 1
resource "azurerm_resource_group" "bsquarezone" {
    name = var.resourcegroup_details.name
    location = var.resourcegroup_details.location
  
}
