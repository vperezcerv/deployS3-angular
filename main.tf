resource "aws_s3_bucket" "static_site" {
  bucket = "bucket-deploys3-angular-vapc-1098824" # Cambia a un nombre único
  acl    = "public-read"

}

resource "aws_s3_bucket_website_configuration" "configuration_web" {
  bucket = aws_s3_bucket.static_site.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  routing_rule {
    condition {
      key_prefix_equals = "docs/"
    }
    redirect {
      replace_key_prefix_with = "documents/"
    }
  }
}
