variable "vpccidr" {
    type = string
    default = "10.0.0.0/16"
}

variable "routenames" {
    type = map(object(string))
    default = {
        Name = "one"
        Env = "dev"
    }
}