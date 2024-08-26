terraform {
  backend "s3" {
    bucket = "deveopps-aws-java"
    region = "ca-central-1"
    key = "terraform.tfstate"
    dynamodb_table = "terraform-state-lock"
    encrypt = true


    
  }
}