provider "aws" {
  region = var.region
}

resource "null_resource" "example" {
  triggers = {
    environment = var.environment
    name        = local.instance_fullname
  }

  # This provisioner will run when the resource is created or triggers change
  provisioner "local-exec" {
    command = "echo 'Creating example resource for ${local.instance_fullname} in ${var.region} for ${var.environment} environment'"
  }
}

resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = local.common_tags

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello from ${local.instance_fullname}!"
              EOF
} 