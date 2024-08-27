provider "aws" {
    region = "ca-central-1"
  
}
data "aws_subnet" "subnet" {
  filter {
    name   = "tag:Name"
    values = ["public"]
  }
}
resource "aws_instance" "instance" {
    ami = "ami-07e35c3920b92d884"
    instance_type = "t2.micro"
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