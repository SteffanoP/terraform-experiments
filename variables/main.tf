provider "aws" {
  region = "us-east-2"
}

variable "vpcname" {
  type = string
  default = "my_vpc"
}

variable "sshport" {
  type = number
  default = 22
}

variable "enabled" {
  default = true
}

variable "mylist" {
  type = list(string)
  default = ["Value1", "Value2"]
}

variable "mymap" {
    type = map
    default =  {
        Key1 = 1
        Key2 = 2
    }
}

variable "input_name" {
  type = string
  description = "Set the name of the vpc"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = var.input_name
  }
}

output "vpcid" {
    value = aws_vpc.my_vpc.id
}

variable "my_tuple" {
  type = tuple([string, number, string])
  default = ["cat", 1, "dog"]
}

variable "myobject" {
  type = object({
    name = string,
    port = list(number)
  })
  default = {
    name = "SteffanoP"
    port = [22,80,443]
  }
}