provider "aws" {
  
}

resource "aws_instance" "ec2" {
    ami = "ami-07e35c3920b92d884"
    instance_type = "t2.micro"
    key_name = "react"
    availability_zone = "ca-central-1a"
tag{
Name ="terraformmmm"
}

  
}
#resource "aws_s3_bucket" "s3" {
#    bucket = "prabashrajubucket"
  
#}
