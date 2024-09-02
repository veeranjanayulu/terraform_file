locals {
  region = "us-east-1"
  environment = "aws"
  instance_type = "t2.micro"
}

resource "aws_instance" "example" {
  ami           = "ami-07e35c3920b92d884" # Amazon Linux 2 AMI
  instance_type = local.instance_type

  tags = {
    Name        = "terraform"
    Environment = local.environment
  }
}