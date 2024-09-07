terraform {
  backend "s3" {
    bucket = "rebalstarprabashrajubucket"
    key = "balaji/terraform.state"
    region = "ca-central-1"
    
  }
}