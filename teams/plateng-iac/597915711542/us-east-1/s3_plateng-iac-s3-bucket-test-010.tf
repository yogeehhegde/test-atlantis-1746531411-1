# module "plateng-iac-s3-bucket-test-010" {
#   source = "terraform-aws-modules/s3-bucket/aws"

#   bucket        = "plateng-iac-s3-bucket-test-010"
#   acl           = "private"
#   force_destroy = true
#   versioning = {
#     enabled = true
#   }
# }


resource "aws_s3_bucket" "plateng-iac-s3-bucket-test-010" {
  bucket = "plateng-iac-s3-bucket-test-010"

  tags = {
    Name        = "plateng-iac-s3-bucket-test-010"
  }
}

output "plateng-iac-s3-bucket-test-010_bucket_arn" {
  value = aws_s3_bucket.plateng-iac-s3-bucket-test-010.arn
  description = "The ARN of the S3 bucket plateng-iac-s3-bucket-test-010"
}
