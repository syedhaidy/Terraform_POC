provider "aws" {
    region = "us-east-1"
}

module "ec-instance"{
  source = "./modules/ec-instance"
  ami_value = var.ami_value
  security_groups = var.security_groups
  subnet-id = var.subnet-id
  instance_type = lookup(var.instance_type,terraform.workspace,"")

}