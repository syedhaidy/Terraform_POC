variable "example_var" {
  description = "An example input variable"
  type        = string
  default     = "default_value"
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "example" {
  ami                     = "ami-02d7fd1c2af6eead0"
  instance_type           = "t2.micro"
}


