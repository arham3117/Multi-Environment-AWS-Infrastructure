# Terraform Block
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.69.0"
    }
  }
}
# Provider Block
provider "aws" {
  region = "us-east-2"
}