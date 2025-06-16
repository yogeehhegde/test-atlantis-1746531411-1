# module "plateng-iac-s3-bucket-us-west-2" {
#   source = "terraform-aws-modules/s3-bucket/aws"

#   bucket        = "plateng-iac-s3-bucket-us-west-2"
#   acl           = "private"
#   force_destroy = true
#   versioning = {
#     enabled = true
#   }
# }


# resource "aws_s3_bucket" "plateng-iac-s3-bucket-us-west-2" {
#   bucket = "plateng-iac-s3-bucket-us-west-2"

#   tags = {
#     Name        = "plateng-iac-s3-bucket-us-west-2"
#   }
# }

# output "plateng-iac-s3-bucket-us-west-2_bucket_arn" {
#   value = aws_s3_bucket.plateng-iac-s3-bucket-us-west-2.arn
#   description = "The ARN of the S3 bucket plateng-iac-s3-bucket-us-west-2"
# }

module "plateng-iac-s3-bucket-us-west-2" {
  source      = "../../../../modules/s3"
  bucket_name = "plateng-iac-s3-bucket-us-west-2"
}

output "plateng-iac-s3-bucket-us-west-2_bucket_arn" {
  value = module.plateng-iac-s3-bucket-us-west-2.bucket_arn
}
