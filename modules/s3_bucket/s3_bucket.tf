resource "aws_s3_bucket" "s3_demo" {
  bucket = var.BUCKETNAME

  tags = {
    Name = var.BUCKETNAME
  }
}

resource "aws_s3_bucket_acl" "s3-acl" {
  bucket = aws_s3_bucket.s3_demo.id
  acl = "private"
  depends_on = [ aws_s3_bucket_ownership_controls.s3_bucket_acl_ownership ]
}

resource "aws_s3_bucket_ownership_controls" "s3_bucket_acl_ownership" {
  bucket = aws_s3_bucket.s3_demo.id
  rule {
    object_ownership = "ObjectWriter"
  }
}