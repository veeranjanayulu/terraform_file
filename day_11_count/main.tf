provider "aws" {
    region = "ca-central-1"
  
}

resource "aws_instance" "instance" {
    ami = "ami-07e35c3920b92d884"
    instance_type = var.instance_type
    key_name = var.keypair
    count = length(var.tag_name)
  tags = {
    Name = var.tag_name[count.index]
  }
}