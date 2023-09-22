resource "aws_s3_bucket" "s3_demo" {
  bucket = var.BUCKETNAME

  tags = {
    Name = var.BUCKETNAME
  }
}

resource "aws_s3_bucket_acl" "s3-acl" {
  bucket = aws_s3_bucket.s3_demo.id
  acl = "private"
}