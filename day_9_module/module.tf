module "day_2_module" {
    source = "../day_2"
    ami_id = "ami-07e35c3920b92d884"
    instance_type = "t2.micro"
    keypair  = "react"
  
}