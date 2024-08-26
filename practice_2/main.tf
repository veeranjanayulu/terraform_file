provider "aws" {
  
}

resource "aws_instance" "ec2" {
    ami = "ami-07e35c3920b92d884"
    instance_type = "t2.small"
    key_name = "react"
    tags = {
      Name="aws"
    }
  
}