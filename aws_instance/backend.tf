terraform {
  backend "s3" {
    bucket         = "gk6v3te3d4"
    key            = "terraform/state/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "tf-locks"
  }
}
