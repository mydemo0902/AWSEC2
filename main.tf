
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 1.1.0"
}
provider "aws" {
  
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0a8b4cd432b1c3063"
  instance_type = "t2.micro"
  security_groups = [ "My VPC Security Group" ]
  key_name = "myaws"
}

