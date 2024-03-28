terraform {
  backend "s3" {
    bucket = "terraformstate-demo-syed"
    region = "us-east-2"
    key = "syed/terraform.tfstate"
    dynamodb_table = "terraform-lock"
  }
}