provider "aws" {
  region = var.region
}

resource "aws_s3_bucket" "static_website" {
  bucket = var.bucket_name
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }

  tags = {
    Name        = "Static Website Bucket"
    Environment = "Production"
  }
}

resource "aws_s3_bucket_object" "index" {
  bucket = aws_s3_bucket.static_website.bucket
  key    = "index.html"
  source = var.index_file
  acl    = "public-read"
}

resource "aws_s3_bucket_object" "error" {
  bucket = aws_s3_bucket.static_website.bucket
  key    = "error.html"
  source = var.error_file
  acl    = "public-read"
}

# provider "aws": Configures the AWS provider, using the region variable to specify where the resources will be deployed.
# aws_s3_bucket "static_website": Creates an S3 bucket for hosting the static website:

#     bucket: Uses the bucket_name variable for the bucket's name.
#     acl: Sets the Access Control List (ACL) to public-read, making the contents of the bucket publicly accessible.
#     website: Configures the S3 bucket for static website hosting. The index_document is the main page (typically index.html), and the error_document is the page that will be displayed in case of errors (e.g., 404).
#     tags: Adds metadata tags to the S3 bucket, which can be used for organization and billing purposes.

# aws_s3_bucket_object "index": Uploads the index.html file to the S3 bucket:

#     bucket: Specifies the S3 bucket created earlier.
#     key: The object key, which in this case is index.html.
#     source: Points to the local file path for index.html, using the variable index_file.
#     acl: Sets the object to be publicly readable.

# aws_s3_bucket_object "error": Uploads the error.html file in a similar manner.
