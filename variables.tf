variable "vpccidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "subnetnames" {
    type = map(object({
        cidr_block = string
        map_public_ip_on_launch = bool
    }))
    default = {
        inst1 = {
            cidr_block = "10.0.0.0/24"
            map_public_ip_on_launch = true
        }
        inst2 = {
            cidr_block = "10.0.1.0/24"
            map_public_ip_on_launch = false
        }
    }
}

variable "routetablenames" {
    type = map(string)
    default = {
        Name = "One"
    }
}