module "plateng-iac-s3-bucket-us1" {
  source      = "../../../../modules/s3"
  bucket_name = "plateng-iac-s3-bucket-us1"
}

output "plateng-iac-s3-bucket-us1_bucket_arn" {
  value = module.plateng-iac-s3-bucket-us1.bucket_arn
}
