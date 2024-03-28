provider "aws" {
   region = "us-east-1"
}

resource "aws_instance" "example" {
  ami                     = var.ami_value
  instance_type           = var.instance_type
  subnet_id      = var.subnet-id
  security_groups = var.security_groups
}
 


