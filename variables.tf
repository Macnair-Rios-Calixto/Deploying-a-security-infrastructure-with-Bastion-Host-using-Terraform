# Create a Variables
variable "rgname" {
    type        = string
    description = "resource grouop name"
    default     = "RG-Terraform"
}
variable "location" {
    type        = string
    description = "location name"
    default     = "eastus2"
}

variable "virtual_network_name" {
    type        = string 
    description = "Virtual Network Name"
    default     = "Vnet-Terraform"
}

variable "subnet_int" {
    type        = string 
    description = "Subnet Internal"
    default     = "Internal"
}

variable "subnet_bastion" {
    type        = string 
    description = "Subnet Bastion"
    default     = "AzureBastionSubnet"
}

variable "network_interface"{
    type        = string 
    description = "Network Interface"
    default     = "Vnet-Terraform"
}

variable "pip_bastion" {
    type        = string
    description = "Ip publico do Bastion"
    default     = "pip-bastion"
}

variable "bastion_host" {
    type        = string
    description = "Bastion Host"
    default     = "Bastion-Host"
}

variable "vm_name" {
    type        = list(string)
    description = "VMs Name"
    default     = ["VM01","VM02","VM03"]
}
