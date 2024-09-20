terraform {
  backend "s3" {
    bucket = "shri50012"
    region = "us-east-1"
    key = "touf/terraform.tfstate"
   
    
  }
}