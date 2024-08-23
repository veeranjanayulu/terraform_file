terraform {
  backend "s3" {
    bucket = "aws-hemanth-kumar"
    key    = "test/terraform.tfstate"
    region = "ca-central-1"
  }
}