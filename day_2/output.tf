output "publicip" {
    value = aws_instance.name.public_ip
  
}
output "privateip" {
    value = aws_instance.name.private_ip
    sensitive = true
  
}
output "bucket" {
    value = aws_s3_bucket.bucket.arn
  
}