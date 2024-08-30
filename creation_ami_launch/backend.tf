terraform {
  backend "s3" {
    bucket = "rebalstarprabashrajubucket"
    key = "balaji/terraform.tfstate"
    region = "ca-central-1"
  }
}