resource "aws_s3_bucket" "bucket" {
    bucket = "hemanth-aws-bucket"
    
    lifecycle {
    create_before_destroy = true
    prevent_destroy       = true
    ignore_changes        = [tags]
  }
  
}
resource "aws_s3_bucket_versioning" "version" {
    bucket = aws_s3_bucket.bucket.id
    versioning_configuration {
      status = "Enabled"
    }
  
}
