# module "plateng-iac-s3-bucket-test-10" {
#   source = "terraform-aws-modules/s3-bucket/aws"

#   bucket        = "plateng-iac-s3-bucket-test-10"
#   acl           = "private"
#   force_destroy = true
#   versioning = {
#     enabled = true
#   }
# }


resource "aws_s3_bucket" "plateng-iac-s3-bucket-test-10" {
  bucket = "plateng-iac-s3-bucket-test-10"

  tags = {
    Name        = "plateng-iac-s3-bucket-test-10"
  }
}

output "plateng-iac-s3-bucket-test-10_bucket_arn" {
  value = aws_s3_bucket.plateng-iac-s3-bucket-test-10.arn
  description = "The ARN of the S3 bucket plateng-iac-s3-bucket-test-10"
}
