resource "aws_instance" "name" {
    ami = "ami-058909ec4e7c8a655"
    instance_type = "t2.micro"
    key_name = "react"
    tags = {
      Name="dev-2"
    }

  
}