terraform {
  backend "s3" {
    bucket = "aws-hemanth-kumar"
    key    = "dev/terraform.tfstate"
    region = "ca-central-1"
  }
}