resource "aws_instance" "instance1" {
    ami = var.ubuntu_instance
    instance_type = var.ubuntu_type
    key_name = var.keypair_ubuntu
  
}
resource "aws_instance" "instance2" {
    ami = var.ami
    instance_type = var.ubuntu_type
    key_name = var.keypair_ubuntu
  
}
