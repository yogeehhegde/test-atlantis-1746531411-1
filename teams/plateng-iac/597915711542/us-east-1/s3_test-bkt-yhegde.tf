module "test-bkt-yhegde" {
  source      = "../../../../modules/s3"
  bucket_name = "test-bkt-yhegde"
}

output "test-bkt-yhegde_bucket_arn" {
  value = module.test-bkt-yhegde.bucket_arn
}
