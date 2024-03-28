provider "aws" {
   region = "us-east-2"
}

# resource "aws_instance" "example" {
#    ami                     = "ami-02d7fd1c2af6eead0"
#    instance_type           = "t2.micro"
#    subnet_id="subnet-02985f4a6081c12d5"
#    security_groups=["sg-04c51c62d0b75f46a"]
# }

resource "aws_s3_bucket" "save_state_file" {
   bucket = "terraformstate-demo-syed" 
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
