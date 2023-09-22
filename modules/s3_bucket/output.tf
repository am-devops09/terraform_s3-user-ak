output "s3_bucket_id" {
  value = aws_s3_bucket.s3_demo.id
  description = "s3_bucket_name"
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.s3_demo.arn
  description = "s3_bucket_arn"
}