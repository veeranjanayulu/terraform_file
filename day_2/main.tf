resource "aws_instance" "name" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.keypair
  
}
resource "aws_s3_bucket" "bucket" {
    bucket = var.bucket_name
  
}
resource "aws_s3_object" "bucket_object" {
  bucket = "terraform-20240820065845040600000001"
  key    = "hemanth"                 # The path and name of the object in the bucket
  source = "c:\\terraform_file\\day_2\\hemanth" # The local file path you want to upload
  acl    = "private"                 # Access control list
}

