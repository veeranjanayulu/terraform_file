resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = "rds-subnet-group"
  subnet_ids = ["subnet-09715c48624ec07bc", "subnet-0e291d7232ebcfb3e"]  # Replace with your subnet IDs

  tags = {
    Name = "rds-subnet-group"
  }
}
