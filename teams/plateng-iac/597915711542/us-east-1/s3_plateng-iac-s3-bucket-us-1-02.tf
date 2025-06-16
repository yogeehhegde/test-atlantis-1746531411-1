module "plateng-iac-s3-bucket-us-1-02" {
  source      = "../../../../modules/s3"
  bucket_name = "plateng-iac-s3-bucket-us-1-02"
}

output "plateng-iac-s3-bucket-us-1-02_bucket_arn" {
  value = module.plateng-iac-s3-bucket-us-1-02.bucket_arn
}
