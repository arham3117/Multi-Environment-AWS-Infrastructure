# DynamoDB Table

resource "aws_dynamodb_table" "name" {
    name = "${var.my-env}-arh-practice-devops-table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "id"
    attribute {
        name = "id"
        type = "S"
    }
}