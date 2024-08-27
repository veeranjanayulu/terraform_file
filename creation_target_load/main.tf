provider "aws" {
    region = "ca-central-1"
  
}
#creation  of vpc
resource "aws_vpc" "vpc" {
    cidr_block = var.cidr_block_vpc
    tags = {
      Name ="private_vpc"
    }
  
}
#create internet gateway
resource "aws_internet_gateway" "ig" {
    vpc_id = aws_vpc.vpc.id
    tags = {
      Name = "inter_ig"
    }
  
}
#creating subnet
resource "aws_subnet" "public" {
    vpc_id = aws_vpc.vpc.id
    availability_zone = var.subnet_az_public
    cidr_block = var.subnet_cidr_pulic
    tags = {
      Name = "public_subnet"
    }
  
}
resource "aws_subnet" "public2" {
    vpc_id = aws_vpc.vpc.id
    availability_zone = var.subnet_az_public1
    cidr_block = var.subnet_cidr_pulic1
    tags = {
      Name = "public_subnet_1"
    }
  
}
  

resource "aws_subnet" "private" {
    vpc_id = aws_vpc.vpc.id
    availability_zone = var.subnet_az_private
    cidr_block = var.subnet_cdir_private
    tags = {
      Name = "private_subnet"
    }
  
}
#create route tables
resource "aws_route_table" "route" {
    vpc_id = aws_vpc.vpc.id
    tags = {
      Name = "public_route"
    }
    route {
        gateway_id = aws_internet_gateway.ig.id
        cidr_block = var.route_cidr
    }
  
}
#create subnet_assocation for route
resource "aws_route_table_association" "associatiom" {
    route_table_id = aws_route_table.route.id
    subnet_id = aws_subnet.public.id
  
}

#security groups 
resource "aws_security_group" "secure" {
    name = var.security_name
    description =var.security_description
    vpc_id =aws_vpc.vpc.id  
    tags ={
        Name ="my_security"
    }  
    ingress {
        description = var.ingress_descr
        from_port = var.ingress_from_port
        to_port = var.ingres_to_port
        protocol = var.ingress_protocol
        cidr_blocks = var.ingress_cidr
    }
    egress {
        description      = "TLS from VPC"
        from_port        = 22
        to_port          = 22
        protocol         = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
    }
}