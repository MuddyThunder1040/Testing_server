# This resource writes the content of worker_ip.txt to ip_address.txt
resource "local_file" "ip_address" {
    content  = data.local_file.worker_ip.content
    filename = "${path.module}/ip_address.txt"
}

# This data source reads the content of worker_ip.txt
data "local_file" "worker_ip" {
    filename = "${path.module}/worker_ip.txt"
}
resource "aws_instance" "Rapid7" {
    ami           = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"
    tags = {
        Name = "Rapid7"
    }
}
  
}