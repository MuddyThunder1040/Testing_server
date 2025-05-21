# This resource writes the content of worker_ip.txt to ip_address.txt
resource "local_file" "ip_address" {
    content  = data.local_file.worker_ip.content
    filename = var.ip_address_filename
}

# This data source reads the content of worker_ip.txt
data "local_file" "worker_ip" {
    filename = var.worker_ip_filename
}

# Create an EC2 instance named Rapid7
resource "aws_instance" "Rapid7" {
    ami           = var.ec2_ami
    instance_type = var.ec2_instance_type
    tags = {
        Name = var.ec2_name_tag
    }
}

resource "aws_s3_bucket" "randbuck" {
    bucket = var.s3_bucket_name
    versioning {
        enabled = var.s3_bucket_versioning
    }
    lifecycle {
        prevent_destroy = var.s3_bucket_prevent_destroy
    }
    tags = {
        Name = var.s3_bucket_name_tag
    }
}



