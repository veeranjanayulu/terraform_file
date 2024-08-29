resource "aws_db_instance" "example" {
  allocated_storage    = 20
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  db_name                 = "mydatabase"  # Correct positioning of the name attribute
  username             = "admin"
  password             = "123456789"
  vpc_security_group_ids = ["sg-020ebc9138ba1aca0"]
  db_subnet_group_name = aws_db_subnet_group.rds_subnet_group.id
  multi_az             = false
  publicly_accessible  = false
  skip_final_snapshot  = true

  tags = {
    Name = "terraform-rds-instance"
  }
}
