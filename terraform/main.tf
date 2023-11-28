resource "aws_s3_bucket" "static_site" {
  bucket = "bucket-deploys3-angular-vapc-1098824"  # Reemplaza con un nombre único

  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

resource "aws_s3_bucket_object" "web_files" {
  for_each = fileset("${path.module}/../../dist", "**/*.*")

  bucket = aws_s3_bucket.static_site.bucket
  key    = each.value
  source = "${path.module}/../../dist/${each.value}"
}