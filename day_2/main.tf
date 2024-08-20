resource "aws_instance" "name" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key
  
}
resource "aws_s3_bucket" "bucket" {
    bucket = var.bucket_name
  
}