module "plateng-iac-s3-bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket        = "plateng-iac-s3-bucket"
  acl           = "private"
  force_destroy = true
  versioning = {
    enabled = true
  }
}


