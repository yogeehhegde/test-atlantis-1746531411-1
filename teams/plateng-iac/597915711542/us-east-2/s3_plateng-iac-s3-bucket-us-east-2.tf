
module "plateng-iac-s3-bucket-us-east-2" {
  source      = "../../../../modules/s3"
  bucket_name = "plateng-iac-s3-bucket-us-east-2"
}

output "plateng-iac-s3-bucket-us-east-2_bucket_arn" {
  value = module.plateng-iac-s3-bucket-us-east-2.bucket_arn
}
