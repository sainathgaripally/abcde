variable "vpccidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "subnetcidrs" {
    type = list(string)
    default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "subnetnames" {
    type = list(string)
    default = ["Subnet One", "Subnet Two"]
}