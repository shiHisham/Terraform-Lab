terraform {
  backend "s3" {
    bucket = "your-terraform-state-bucket-name" # Replace with your S3 bucket name
    key    = "practice4/terraform.tfstate"
    region = "us-east-1" # Replace with your AWS region

    # Enable state locking and consistency checking with DynamoDB
    # Create this DynamoDB table with a primary key called 'LockID'
    dynamodb_table = "your-terraform-lock-table-name" # Replace with your DynamoDB table name
    encrypt        = true
  }
}

# This backend configuration must be present before running terraform init.
# After adding this, run 'terraform init' from this directory.
# If you have existing local state, Terraform will prompt you to migrate it. 