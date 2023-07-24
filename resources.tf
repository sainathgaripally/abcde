provider "aws" {
    region = "us-east-2"
    access_key = var.accesskey
    secret_key = var.secretkey
}

resource "aws_vpc" "vpc-one" {
    cidr_block = var.vpccidr
    tags = {
        Name = "Sample"
    }
}

resource "aws_subnet" "subnets" {
    count = length(var.subnetcidrs)
    cidr_block = var.subnetcidrs[count.index]
    tags = {
        Name = var.subnetnames[count.index]
    }
}

