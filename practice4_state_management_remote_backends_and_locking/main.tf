provider "aws" {
  region = var.region
}

resource "null_resource" "example" {
  triggers = {
    region = var.region
  }

  provisioner "local-exec" {
    command = "echo 'Managing a resource in ${var.region} with remote state.'"
  }
} 