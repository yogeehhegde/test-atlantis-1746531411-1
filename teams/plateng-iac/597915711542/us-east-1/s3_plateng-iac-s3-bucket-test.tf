module "plateng-iac-s3-bucket-test" {
  source      = "../../../../modules/s3"
  bucket_name = "plateng-iac-s3-bucket-test"
}

output "plateng-iac-s3-bucket-test_bucket_arn" {
  value = module.plateng-iac-s3-bucket-test.bucket_arn
}
