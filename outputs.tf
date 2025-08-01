
output "id" {
  description = "The ID of the EBS volume "
  value       = aws_ebs_volume.this.id
}

output "arn" {
  description = "The ARN of the instance"
  value       = aws_ebs_volume.this.arn
}

output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider"
  value       = try(aws_ebs_volume.this.tags_all, {})
}
