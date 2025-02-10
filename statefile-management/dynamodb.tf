resource "aws_dynamodb_table" "terraform_state_lock" {
  name           = "terraform-state-locks"
  attribute {
    name = "LockID"
    type = "S"
  }
  hash_key = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  tags = {
    Name = "ansys-round1-terraform-state-locks"
  }
}