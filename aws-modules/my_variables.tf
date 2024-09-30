variable "my-env" {
  type        = string
  description = "This is my environment module"
}

variable "ami_id" {
    description = "This is my AMI ID for EC2"
    type = string
}

variable "instance_type" {
  type        = string
  description = "This is the type instance for EC2 "
}

variable "instance_count" {
  description = "This is the count of instance for EC2"
  type = number
}

