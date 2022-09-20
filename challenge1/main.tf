provider "aws" {
  region = "us-east-2"
}

variable "vpc_name" {
  type = string
  default = "TerraformVPC"
}

variable "cidr_block" {
  type = string
  default = "192.168.0.0/24"
}

resource "aws_vpc" "myvpc" {
  cidr_block = var.cidr_block
  tags = {
    Name = "TerraformVPC"
  }
}