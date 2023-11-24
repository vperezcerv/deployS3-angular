provider "aws" {
  region = "us-east-1"  # Cambia según tu región
}

resource "aws_s3_bucket" "static_site" {
  bucket = "bucket-deploys3-angular-vapc-1098824"  # Cambia a un nombre único
  acl    = "public-read"

  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}
