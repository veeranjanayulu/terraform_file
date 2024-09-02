terraform {
  required_providers {
    aws ={
        source = "hashicorp/aws"
        version = "4.20.0"
    }
  }
}
provider "aws" {
    region = "ca-central-1"
  
}