# Define variables and map to main file
variable "resourcegroup_details" {
    type = object({
        name = string
        location = string
    })
}

variable "vnet_details" {
    type = object({
        name = string
        address_space = list(string)
    })
  
}

variable "subnet_details" {
    type = object({
        name = list(string)
    })
  
}