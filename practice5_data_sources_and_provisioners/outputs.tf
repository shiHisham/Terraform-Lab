output "instance_id" {
  description = "The ID of the EC2 instance created in Practice 5"
  value       = aws_instance.example.id
}

output "public_ip" {
  description = "The public IP address of the EC2 instance created in Practice 5"
  value       = aws_instance.example.public_ip
} 