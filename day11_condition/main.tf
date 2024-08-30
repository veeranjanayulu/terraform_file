provider "aws" {
    region = "ca-central-1"
  
}

resource "aws_instance" "dev" {
  ami           ="ami-07e35c3920b92d884"
  instance_type = var.instance_type
  count         = var.instance_type == "t2.micro" ? 1 : 0
  tags = {
    Name = "dev_server"
  }
}