module "users" {
  source = "./modules/users"
}

module "s3" {
  source = "./modules/s3_bucket"
}