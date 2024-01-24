terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.33.0"
    }
  }
}


provider "aws" {
  region  = "ap-south-1"
}

resource "aws_instance" "webserver" {
  ami           = "ami-00952f27cf14db9cd"
  instance_type = "t2.micro"

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}
