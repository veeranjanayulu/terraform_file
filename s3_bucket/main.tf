provider "aws" {
    region = "ca-central-1"
    alias = "ap-south-1"
  
}


resource "aws_s3_bucket" "bucket" {
    for_each = toset(var.aws_s3_names)
    provider = aws.ap-south-1
   bucket = each.value
}