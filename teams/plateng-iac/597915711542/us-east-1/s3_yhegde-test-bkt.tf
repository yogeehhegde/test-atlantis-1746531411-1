module "yhegde-test-bkt" {
  source      = "../../../../modules/s3"
  bucket_name = "yhegde-test-bkt"
}

output "yhegde-test-bkt_bucket_arn" {
  value = module.yhegde-test-bkt.bucket_arn
}
