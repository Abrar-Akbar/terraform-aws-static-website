variable "region" {
  description = "The AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "The name of the S3 bucket to create"
  type        = string
}

variable "index_file" {
  description = "The path to the index.html file"
  type        = string
}

variable "error_file" {
  description = "The path to the error.html file"
  type        = string
}
