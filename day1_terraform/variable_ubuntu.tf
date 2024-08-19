variable "ubuntu_instance" {
    description = "ubutnu instance ami"
    type = string
    default = "ami-0f221e8087f262252"
  
}
variable "ubuntu_type" {
    description = "type"
    type = string
    default = "t2.micro"
  
}
variable "keypair_ubuntu" {
    description = "key_pair"
    type = string
    default = "react"
  
}