# module "plateng-iac-s3-bucket-test-05" {
#   source = "terraform-aws-modules/s3-bucket/aws"

#   bucket        = "plateng-iac-s3-bucket-test-05"
#   acl           = "private"
#   force_destroy = true
#   versioning = {
#     enabled = true
#   }
# }


resource "aws_s3_bucket" "plateng-iac-s3-bucket-test-05" {
  bucket = "plateng-iac-s3-bucket-test-05"

  tags = {
    Name        = "plateng-iac-s3-bucket-test-05"
  }
}

output "plateng-iac-s3-bucket-test-05_bucket_arn" {
  value = aws_s3_bucket.plateng-iac-s3-bucket-test-05.arn
  description = "The ARN of the S3 bucket plateng-iac-s3-bucket-test-05"
}
