provider "aws" {
    region = "ca-central-1"
    alias = "central"
  
}
provider "aws" {
    region = "ap-south-1"
    alias = "south"
  
}
resource "aws_s3_bucket" "central" {
    bucket = "tollwood-ka-raj-prabash"
    provider = aws.central
  
}
resource "aws_s3_bucket" "south" {
    bucket = "king-of-tollywood-is-prabash"
    provider =aws.south  
}