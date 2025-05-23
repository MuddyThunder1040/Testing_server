output "muddythunder_instance_id" {
  description = "The ID of the MuddyThunder EC2 instance"
  value       = aws_instance.MuddyThunder.id
}

output "muddythunder_public_ip" {
  description = "The public IP of the MuddyThunder EC2 instance"
  value       = aws_instance.MuddyThunder.public_ip
}