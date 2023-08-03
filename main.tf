locals {

}

################################################################################
# VPC
################################################################################

resource "aws_vpc" "lehner-vpc" {
    count = local.create_vpc ? 1 : 0
    cidr_block          = var.cidr
    tags = {
    "Name" = var.name 
    }
}

