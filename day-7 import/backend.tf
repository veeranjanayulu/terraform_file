terraform {
  backend "s3" {
    bucket = "rebalstarprabashrajubucket"
    key = "hemanth/terraform.tfstate"
    region = "ca-central-1"
  }
}