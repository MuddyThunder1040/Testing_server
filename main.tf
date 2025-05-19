terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.5"
    }
  }
}

provider "local" {}

resource "local_file" "ip_address" {
  content  = data.local_file.worker_ip.content
  filename = "${path.module}/ip_address.txt"
}
data "local_file" "worker_ip" {
  filename = "${path.module}/worker_ip.txt"
  
}
