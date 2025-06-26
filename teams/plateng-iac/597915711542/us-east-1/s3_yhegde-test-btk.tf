module "yhegde-test-btk" {
  source      = "../../../../modules/s3"
  bucket_name = "yhegde-test-btk"
}

output "yhegde-test-btk_bucket_arn" {
  value = module.yhegde-test-btk.bucket_arn
}
