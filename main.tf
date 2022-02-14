provider "aws" {
  region = "us-east-2"
}

resource "aws_vpc" "Main" {            # Creating VPC here
  cidr_block       = "10.0.0.0/24" # Defining the CIDR block use 10.0.0.0/24 for demo
  instance_tenancy = "default"
  tags = {
    Name = "Main"
  }
}
