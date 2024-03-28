provider "aws" {
  region ="us-east-1"
}

resource "aws_instance" "name" {
   ami= var.ami_value
   instance_type = var.instance_type
   security_groups = var.security_groups
   subnet_id = var.subnet-id
}