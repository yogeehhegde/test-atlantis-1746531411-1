module "test" {
  source      = "../../../../modules/s3"
  bucket_name = "test"
}

output "test_bucket_arn" {
  value = module.test.bucket_arn
}
