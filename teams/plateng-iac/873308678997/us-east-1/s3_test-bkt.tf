module "test-bkt" {
  source      = "../../../../modules/s3"
  bucket_name = "test-bkt"
  bucket_prefix = "plateng-iac"
}

output "test-bkt_bucket_arn" {
  value = module.test-bkt.bucket_arn
}
