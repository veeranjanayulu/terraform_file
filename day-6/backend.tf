terraform {
  backend "s3" {
    bucket = "fgfggfhhhjjj"
    region = "ca-central-1"
    key = "terraform.tfstate"
    dynamodb_table = "terraform-state-lock-dynamo"
    encrypt = true
    
  }
}