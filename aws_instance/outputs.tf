output "ec2_instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.Rapid7.id
}

output "ec2_instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.Rapid7.public_ip
}

output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.randbuck.arn
}

output "s3_bucket_domain_name" {
  description = "The domain name of the S3 bucket"
  value       = aws_s3_bucket.randbuck.bucket_domain_name
}

output "ip_address_file_path" {
  description = "The path to the generated ip_address.txt file"
  value       = local_file.ip_address.filename
}