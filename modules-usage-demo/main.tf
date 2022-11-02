module "bsquarezone-vnet" {
  source = "./modules/bsquarezone-vnet"
  resourcegroup_details = {
    name = "ntier-rsg"
    location = "westus"
  }   
  vnet_details = {
    name = "my-ntier-vnet"
    address_space = ["10.10.0.0/16"]
  }
  subnet_details = {
    name = ["web", "app", "db"]
  }
}

output "subnetcount" {
    value = module.bsquarezone-vnet.subnetscount
  
}