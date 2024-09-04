resource "aws_instance" "name" {
    ami = "ami-07e35c3920b92d884"
    instance_type = "t2.micro"
    key_name = "react"
    
  
}
