# module "plateng-iac-s3-bucket-my-test" {
#   source = "terraform-aws-modules/s3-bucket/aws"

#   bucket        = "plateng-iac-s3-bucket-my-test"
#   acl           = "private"
#   force_destroy = true
#   versioning = {
#     enabled = true
#   }
# }


resource "aws_s3_bucket" "plateng-iac-s3-bucket-my-test" {
  bucket = "plateng-iac-s3-bucket-my-test"

  tags = {
    Name        = "plateng-iac-s3-bucket-my-test"
  }
}

output "plateng-iac-s3-bucket-my-test_bucket_arn" {
  value = aws_s3_bucket.plateng-iac-s3-bucket-my-test.arn
  description = "The ARN of the S3 bucket plateng-iac-s3-bucket-my-test"
}
