provider "aws" {
    region = "ca-central-1"
  
}

data "aws_key_pair" "keypair" {
    key_name = "azure"
  
}

resource "aws_instance" "instance" {
    ami = "ami-05073582a4b03d785"
    key_name = data.aws_key_pair.keypair.key_name
    instance_type = "t2.micro"
  
}

output "instance_type" {
    value = aws_instance.instance.instance_type
  
}
