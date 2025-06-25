module "yhegde-test-bkt-us-1" {
  source      = "../../../../modules/s3"
  bucket_name = "yhegde-test-bkt-us-1"
}

output "yhegde-test-bkt-us-1_bucket_arn" {
  value = module.yhegde-test-bkt-us-1.bucket_arn
}
