terraform {
  backend "s3" {
    bucket         = "randbuck"
    key            = "/home/vishnu/workspace/Testing_Server/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
    dynamodb_table = "tf-locks"
  }
}
