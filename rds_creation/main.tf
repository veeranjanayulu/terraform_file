provider "aws" {
    region = "ca-central-1"
  
}
resource "aws_security_group" "rds_sg" {
  name        = "rds-security-group"
  description = "Allow traffic to RDS instance"
  vpc_id      = "vpc-044f111f45643a2a8"  # Replace with your VPC ID

  ingress {
    from_port   = 3306           # Default port for MySQL, change as needed for other engines
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]  # Allow access from anywhere (not recommended for production)
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "rds-security-group"
  }
}
