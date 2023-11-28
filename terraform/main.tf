resource "aws_s3_bucket" "static_site" {
  bucket = "bucket-deploys3-angular-vapc-1098824" # Cambia a un nombre único
  acl    = "public-read"

}