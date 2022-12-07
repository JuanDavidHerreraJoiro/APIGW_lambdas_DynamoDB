resource "aws_dynamodb_table" "this" {
  name         = local.namespaced_service_name
  hash_key     = "id"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "id"
    type = "N"
  }
}

resource "aws_dynamodb_table_item" "this" {
  table_name = aws_dynamodb_table.this.name
  hash_key   = aws_dynamodb_table.this.hash_key

  item = <<ITEM
{
  "id": {"N": "1"},
  "identification": {"S": "1010002946"},
  "typeID": {"S": "C.C."},
  "firsName": {"S": "Juan David"},
  "lastName": {"S": "Herrera Joiro"},
  "phone": {"S": "3186192497"},
  "email": {"S": "juandavidherrera@unicesar.edu.co"},
  "city": {"S": "Valledupar"},
  "note": {"N": "5.0"},
  "state": {"S": "true"}
}
ITEM
}
