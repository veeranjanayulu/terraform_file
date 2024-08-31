provider "aws" {
    profile = "default"
    region = "ca-central-1"
    alias = "central-aws"
  
}
provider "aws" {
    profile = "rohan"
    region = "ap-south-1"
    alias = "south-aws"
  
}
resource "aws_s3_bucket" "central" {
    bucket = "rajuprabashbucket"
    provider = aws.central-aws
  
}
resource "aws_s3_bucket" "south" {
    bucket ="rohannigambucket"
    provider =aws.south-aws  
}