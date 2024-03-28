provider "aws" {
    region = "us-east-1"
}

module "ec-instance"{
  source = "./module/ec2instance"
  ami_value="ami-02d7fd1c2af6eead0"
instance_type="t2.micro"
subnet-id="subnet-02985f4a6081c12d5"
security_groups=["sg-04c51c62d0b75f46a"]
}