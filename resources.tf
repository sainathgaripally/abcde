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

resource "aws_route_table" "rt" {
    for_each = var.routenames
    vpc_id = aws_vpc.vpc-one.id
    tags = each.value
}

