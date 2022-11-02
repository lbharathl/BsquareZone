# Env specific variables
resourcegroup_details = {
  name          = "bsquarezone-ntier"
  location      = "eastus"
}

vnet_details = {
  name = "ntier-vnet"
  address_prefixes = [ "192.168.0.0/16" ]
  
}

subnet_details = {
  name = [ "web", "app", "db", "managemet", "cache", "storage"]
}