terraform {
  required_version = ">= 1.4.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"  # Change if needed
}

# Replace <unique-bucket-name> with something globally unique,
# e.g., "my-terraform-practice1-abc123"
resource "aws_s3_bucket" "practice1_bucket" {
  bucket = "<unique-bucket-name>"
  acl    = "private"
  tags = {
    Name        = "practice1-bucket"
    Environment = "practice"
  }
}
