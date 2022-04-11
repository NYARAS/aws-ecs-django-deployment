resource "aws_s3_bucket" "app_public_files" {
  bucket        = "${local.prefix}-calvine-files"
  force_destroy = true
}

resource "aws_s3_bucket_acl" "app_public_files" {
  bucket = aws_s3_bucket.app_public_files.id
  acl    = "public-read"
}
