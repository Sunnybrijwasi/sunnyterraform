variable "resource_group_name" {
    description = "Name of RG"
}

variable "location" {
    default = "East US"
    description = "Location where all resources are/will be deployed"
}

variable "storageAccountName" {
    default = "mystorageaccount"
    description = "Variable that holds the name of Storage Account"
}