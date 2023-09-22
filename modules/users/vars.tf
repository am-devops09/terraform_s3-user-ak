variable "user" {
  type = string
  default = "Demo-User"
  description = "Name of the user"
}


variable "user-policy" {
  type = string
  default = "s3-access-policy-demo-terraform"

}

variable "BUCKETNAME" {
  type = string
  default = "s3-demo-terraform"
}