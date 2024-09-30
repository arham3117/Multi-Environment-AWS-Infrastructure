variable "dynamo_table_name" {
  type        = string
  default     = "arh-table"
  description = "This is table name for DynamoDB"
}

variable "ami_id" {
    default = "ami-085f9c64a9b75eed5"
    type = string
    description = "This is ami id name for Ec2 (Ubuntu)"
}