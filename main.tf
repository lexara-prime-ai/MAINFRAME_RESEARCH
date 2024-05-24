provider "aws" {
    region = var.aws_region
}

# VPC
resource "aws_vpc" "main" {
    # Configure -> Classless Inter-Domain Routing.
    cidr_block = "10.0.0.0/16"
}

# Subnets
resource "aws_subnet" "primary_subnet" {
    vpc_id = aws_vpc.main.id
    cidr_block = var.aws_region
    availability_zone = "us-west-2a"
}

resource "aws_subnet" "secondary_subnet" {
    vpc_id = aws_vpc.main.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "us-west-2a"
}