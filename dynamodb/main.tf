resource "aws_dynamodb_table" "name" {
    name = "hemanth"
    hash_key = "LockID"
    write_capacity = 20
    read_capacity = 20

    attribute {
      name="LockID"
      type = "S"
    }
  
}