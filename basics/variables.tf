variable "muddythunder_ami" {
  description = "AMI ID for the MuddyThunder instance"
  type        = string
  default     = "ami-0c02fb55956c7d316" # Amazon Linux 2 AMI for us-east-1
}

variable "muddythunder_instance_type" {
  description = "Instance type for the MuddyThunder instance"
  type        = string
  default     = "t2.micro"
}