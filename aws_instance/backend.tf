# terraform {
#     backend "s3" {
#         bucket         = "dell-bucket-123456789"    # Replace with your actual bucket name
#         key            = "terraform.tfstate"          # Simplified key path, modify as needed
#         region         = "us-west-2"                  # Change to your desired region
#         encrypt        = true                         # Keep encryption enabled for security
#         dynamodb_table = "tf_locks"      # Make sure this DynamoDB table exists
#     }
# }
