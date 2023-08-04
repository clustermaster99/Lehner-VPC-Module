# Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      configuration_aliases = [
          aws.lehner-vpc-dev1
      ]
    }
  }
}

################################################################################
# VPC
################################################################################

resource "aws_vpc" "lehner-vpc" {
  cidr_block = var.cidr
  tags = {
    "Name" = var.name
  }
}

