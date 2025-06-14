# module "plateng-iac-s3-bucket" {
#   source = "terraform-aws-modules/s3-bucket/aws"

#   bucket        = "plateng-iac-s3-bucket"
#   acl           = "private"
#   force_destroy = true
#   versioning = {
#     enabled = true
#   }
# }


# resource "aws_s3_bucket" "plateng-iac-s3-bucket" {
#   bucket = "plateng-iac-s3-bucket"

#   tags = {
#     Name        = "plateng-iac-s3-bucket"
#   }
# }

# output "plateng-iac-s3-bucket_bucket_arn" {
#   value = aws_s3_bucket.plateng-iac-s3-bucket.arn
#   description = "The ARN of the S3 bucket plateng-iac-s3-bucket"
# }

module "plateng-iac-s3-bucket" {
  source      = "../../../../modules/s3"
  bucket_name = "plateng-iac-s3-bucket"
}

output "plateng-iac-s3-bucket_bucket_arn" {
  value = module.plateng-iac-s3-bucket.bucket_arn
}
