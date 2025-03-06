provider "aws" {
    region = "ca-central-1"
  
}

resource "random_string" "instance" {
    length = 5
    special = false
    lower = false  
}

locals {
  instance_name = format("myapp-%s", random_string.instance.result)
}



resource "aws_instance" "instance" {
    ami = lookup(var.ami_map,var.region)
    instance_type = var.instance_types
    key_name = "azure"

     tags = {
       Name = local.instance_name 
     }
  
}