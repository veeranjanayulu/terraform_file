provider "aws" {
  region = "ca-central-1"
  
}
resource "aws_instance" "instance" {
    ami = "ami-07e35c3920b92d884"
    instance_type = "t2.micro"
    key_name = "react"
    tags = {
      Name="terrafroms"
    }
  
}