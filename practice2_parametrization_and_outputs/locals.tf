locals {
  common_tags = {
    Environment = var.environment
    Project     = "TerraformLab"
    ManagedBy   = "Terraform"
  }
  instance_fullname = "${var.instance_name}-${var.environment}"
} 