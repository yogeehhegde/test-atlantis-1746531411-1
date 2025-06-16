module "plateng-iac-s3-bucket-us-1-01" {
  source      = "../../../../modules/s3"
  bucket_name = "plateng-iac-s3-bucket-us-1-01"
}

output "plateng-iac-s3-bucket-us-1-01_bucket_arn" {
  value = module.plateng-iac-s3-bucket-us-1-01.bucket_arn
}
