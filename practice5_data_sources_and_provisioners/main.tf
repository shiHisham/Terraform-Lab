provider "aws" {
  region = var.region
}

resource "aws_instance" "example" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name # Required for remote-exec

  tags = {
    Name = "data-provisioner-example"
  }

  # Local provisioner: runs on the machine where Terraform is executed
  provisioner "local-exec" {
    command = "echo 'Instance with ID ${self.id} created in ${var.region}. Running local script.'"
    # Add more commands here if needed
  }

  # Remote provisioner: runs on the EC2 instance after it's created
  # Requires SSH access (key_name and proper security group)
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nginx",
      "echo 'Web server installed on ${self.public_ip}!'"
    ]

    connection {
      type        = "ssh"
      user        = "ubuntu" # Or the appropriate user for your AMI
      private_key = file("~/.ssh/your-private-key.pem") # Replace with your key path
      host        = self.public_ip
    }
  }

  # File provisioner (optional): copies files to the instance
  # provisioner "file" {
  #   source      = "./bootstrap.sh"
  #   destination = "/tmp/bootstrap.sh"
  #   connection {
  #     type        = "ssh"
  #     user        = "ubuntu"
  #     private_key = file("~/.ssh/your-private-key.pem")
  #     host        = self.public_ip
  #   }
  # }

  # You could also use the local-exec provisioner to run the remote script after the file is copied:
  # provisioner "remote-exec" {
  #   inline = ["chmod +x /tmp/bootstrap.sh", "/tmp/bootstrap.sh"]
  #   connection {
  #     type        = "ssh"
  #     user        = "ubuntu"
  #     private_key = file("~/.ssh/your-private-key.pem")
  #     host        = self.public_ip
  #   }
  # }
} 