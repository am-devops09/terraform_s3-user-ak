output "user_name" {
  value = aws_iam_user.demo-user.name
  description = "name of the created user"
}


output "user_arn" {
  value = aws_iam_user.demo-user.arn
  description = "arn of the user "
}


output "access_key_id" {
  value = aws_iam_access_key.demo-user.id
  description = "the acces key id "
}

output "secret_access_key_id" {
  sensitive = true
  value = aws_iam_access_key.demo-user.secret
  description = "The secret access key. This will be written to the state file in plain-text "
}