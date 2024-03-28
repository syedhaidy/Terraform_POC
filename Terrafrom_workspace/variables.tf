variable "ami_value" {
  description = "value for the AMI"
}

variable "instance_type" {
  description = "value for Instance Type"
  type = map(string)

  default = {
    "dev" = "t2.micro"
    "stage" = "t2.medium"
    "prod" = "t2.xlarge"
  }

}

variable "subnet-id" {
  description = "value for subnet id"
}

variable "security_groups" {
  description = "security group value"
}