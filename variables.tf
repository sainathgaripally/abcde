variable "vpccidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "subnetcidrs" {
    type = set(string)
    default = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "subnetnames" {
    type = set(string)
    default = ["Subnet One", "Subnet Two"]
}