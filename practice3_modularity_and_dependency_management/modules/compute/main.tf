resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id

  tags = {
    Name = "compute-instance"
  }

  # Example of explicit dependency on the subnet
  depends_on = [
    aws_subnet.example # Assuming a subnet resource in the network module outputs its ID
  ]
} 