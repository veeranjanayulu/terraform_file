locals {
  region = "us-east-1"
  environment = "aws"
  instance_type = "t2.micro"
  key_name ="react"
  ami="ami-07e35c3920b92d884"
}

resource "aws_instance" "example" {
  ami           = local.ami # Amazon Linux 2 AMI
  instance_type = local.instance_type
  key_name = local.key_name

  tags = {
    Name        = "terraform"
    Environment = local.environment
  }
}