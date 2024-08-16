terraform {
  backend "s3" {
    bucket = "mybucket-static523"
    key    = "s3-static-website/terraform.tfstate"
    region = "us-west-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}

# backend "s3": Configures Terraform to store its state in an S3 bucket. This is crucial for collaboration, as the state file tracks the current status of your infrastructure.
# bucket: The name of the S3 bucket where the Terraform state file will be stored.
# key: The path within the S3 bucket where the state file will be stored.
# region: The AWS region where the S3 bucket and DynamoDB table are located.
# encrypt: Ensures that the state file is encrypted in S3.
# dynamodb_table: A DynamoDB table used to lock the state file, preventing concurrent operations that could corrupt the state.
