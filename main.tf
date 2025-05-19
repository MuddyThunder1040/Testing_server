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
  content  = "Machine IP Address"
  filename = "${path.module}/ip_address.txt"
}

