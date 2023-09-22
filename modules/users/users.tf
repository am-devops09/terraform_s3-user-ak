resource "aws_iam_user" "demo-user" {
  name = var.user
  path = "/system/"

  tags= {
    Name = var.user
  }
}

resource "aws_iam_access_key" "demo-user" {
  user= aws_iam_user.demo-user.name
}

resource "aws_iam_user_policy" "demo-user-policy" {
  name = var.user-policy
  user = aws_iam_access_key.demo-user.name

  policy = jsonencode({
    Version: "2012-10-17",
    Statement: [
      {
        Effect: "Allow",
        Action: "s3:*",
        Resource: "arn:aws:s3:::${var.BUCKETNAME}/*"
      }
    ]
  })
}

