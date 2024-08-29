module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  ami                    = "ami-07e35c3920b92d884"
  instance_type          = "t2.micro"
  key_name               = "react"
  monitoring             = true
  subnet_id              = "subnet-0e291d7232ebcfb3e"

  tags = {
    Name="terraform_registry"
  }
}