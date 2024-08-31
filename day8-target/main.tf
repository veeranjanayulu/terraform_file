provider "aws" {
    region = "ca-central-1"
  
}
data "aws_subnet" "subnet" {
  filter {
    name   = "tag:Name"
    values = ["public"]
  }
}
data "aws_ami" "ami_id" {
  filter {
    name = "image-id"
    values = [ "ami-07e35c3920b92d884" ]
  }
  
}
data "aws_ec2_instance_type" "name" {

  instance_type = "t2.micro"
  
}
resource "aws_instance" "instance" {
    ami = data.aws_ami.ami_id.id
    instance_type = data.aws_ec2_instance_type.name.instance_type
    key_name = "react"
    subnet_id = data.aws_subnet.subnet.id
  tags = {
    Name ="target"
  }
}
resource "aws_s3_bucket" "s3" {
    bucket = "rebalstarprabashrajubucket"
    depends_on = [ aws_instance.instance]
  
}