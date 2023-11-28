output "website_url" {
  value = aws_s3_bucket.my-static-website.website_endpoint
}
