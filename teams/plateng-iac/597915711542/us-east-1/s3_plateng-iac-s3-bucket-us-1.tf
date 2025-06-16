module "plateng-iac-s3-bucket-us-1" {
  source      = "../../../../modules/s3"
  bucket_name = "plateng-iac-s3-bucket-us-1"
}

output "plateng-iac-s3-bucket-us-1_bucket_arn" {
  value = module.plateng-iac-s3-bucket-us-1.bucket_arn
}
