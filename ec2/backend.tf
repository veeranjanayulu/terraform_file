terraform {
  backend "s3" {
    bucket = "rebalstarprabashrajubucket"
    region = "ca-central-1"
    key = "touf/terraform.tfstate"
    dynamodb_table = "hemanth"
    encrypt = true
    
  }
}