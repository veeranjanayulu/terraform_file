terraform {
  backend "s3" {
    bucket ="rebalstarprabashrajubucket"
    region="ca-central-1"
    key="terraform/terraform.tfstate"
    
    
  }
}