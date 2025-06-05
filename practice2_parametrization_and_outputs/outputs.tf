output "instance_name" {
  description = "Full name of the example instance"
  value       = local.instance_fullname
}

output "region_used" {
  description = "AWS region used for deployment"
  value       = var.region
} 