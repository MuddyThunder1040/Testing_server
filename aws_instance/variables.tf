variable "worker_ip_filename" {
  description = "Path to the worker_ip.txt file"
  type        = string
  default     = "${path.module}/worker_ip.txt"
}

variable "ip_address_filename" {
  description = "Path to the ip_address.txt file"
  type        = string
  default     = "${path.module}/ip_address.txt"
}

variable "ec2_ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ec2_name_tag" {
  description = "Name tag for the EC2 instance"
  type        = string
  default     = "Rapid7"
}

variable "s3_bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "gk6v3te3d4"
}

variable "s3_bucket_versioning" {
  description = "Enable versioning for the S3 bucket"
  type        = bool
  default     = true
}

variable "s3_bucket_prevent_destroy" {
  description = "Prevent S3 bucket from being destroyed"
  type        = bool
  default     = true
}

variable "s3_bucket_name_tag" {
  description = "Name tag for the S3 bucket"
  type        = string
  default     = "randbuck"
}