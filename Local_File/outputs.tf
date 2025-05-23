output "s3_bucket_id" {
    description = "The name of the S3 bucket"
    value       = aws_s3_bucket.example.id
}

output "s3_bucket_arn" {
    description = "The ARN of the S3 bucket"
    value       = aws_s3_bucket.example.arn
}

output "s3_bucket_domain_name" {
    description = "The domain name of the S3 bucket"
    value       = aws_s3_bucket.example.bucket_domain_name
}