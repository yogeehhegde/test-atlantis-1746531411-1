module "plateng-iac-s3-bucket" {
  source      = "../../../../modules/s3"
  bucket_name = "plateng-iac-s3-bucket"
}

output "plateng-iac-s3-bucket_bucket_arn" {
  value = module.plateng-iac-s3-bucket.bucket_arn
}
