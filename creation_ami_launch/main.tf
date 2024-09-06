provider "aws" {
  region = "ca-central-1"
}
resource "aws_instance" "ec2" {
    ami = "ami-07e35c3920b92d884"
    instance_type = "t2.small"
    key_name = "react"
    tags = {
      Name="jenkins"
    }
  
}
resource "aws_ami_from_instance" "ami" {
  name               = "terraform"
  source_instance_id = aws_instance.ec2.id
  description        = "An AMI from an example instance"

  tags = {
    Name = "ec2"
  }
}
resource "aws_launch_template" "example" {
  name = "terraform-launch-template"

  image_id               = aws_ami_from_instance.ami.id
  instance_type          = "t2.micro"
  key_name               = "react"  # Replace with your key pair name
  vpc_security_group_ids = ["sg-020ebc9138ba1aca0"]  # Replace with your security group ID

  

  
}
