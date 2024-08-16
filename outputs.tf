output "website_url" {
  description = "The URL of the static website"
  value       = aws_s3_bucket.static_website.website_endpoint
}

# output "website_url": Provides the URL of the static website hosted on S3 as an output. After running terraform apply, this URL will be displayed, allowing you to easily access your static website.
