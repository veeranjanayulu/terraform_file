resource "aws_instance" "name" {
    ami = "ami-07e35c3920b92d884"
    instance_type = "t2.micro"
    key_name = "react"
    subnet_id = aws_subnet.public.id
    vpc_security_group_ids = [aws_security_group.secure.id]
  
}