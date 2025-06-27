locals {
  default_tags = {
    "tcss:tag-version"    = "1"
    "tcss:classification" = "green"
    "claimed_ownership"   = "true"
    "managed-by"          = "iacasS"

  }
}
module "iac_s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 4.0"

  bucket               = var.bucket_name
  bucket_prefix        = var.bucket_prefix
  force_destroy        = true
  attach_public_policy = false

  # Pass through any other variables you want to expose
  tags = merge(local.default_tags, var.tags)

}
