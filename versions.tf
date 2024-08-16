terraform {
  required_providers {
    aws = {
      version = "~> 5.52.0"
    }
    random = {
      version = "~> 3.6.2"
    }
  }

  required_version = "~> 1.1.9"
}
# required_version: Ensures that Terraform is using version 1.0.0 or higher, which helps maintain consistency across different environments.
# required_providers: Specifies the AWS provider version (~> 4.0) to avoid issues due to changes in the provider's API. The source indicates that the provider is from HashiCorp.
