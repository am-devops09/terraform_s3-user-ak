output "s3_bucket_id" {
  value = module.s3.s3_bucket_id   
  description = "s3 bucket id " 
  }

output "s3 bucket arn" {
  value = module.s3.s3_bucket_arn
  description = "s3 bucket arn"

}

output "user name" {
  value = module.users.user_name
  description = "user name"
}

output "user arn " {
    value = module.users.user_arn
}


output "user access key id " {
  value =  module.users.access_key_id
  description = "access key id"
}


output "secret access key id " {
  sensitive = true
  value = module.users.secret_access_key_id
  description = "secret access key id // The secret access key. This will be written to the state file in plain-text"
}

