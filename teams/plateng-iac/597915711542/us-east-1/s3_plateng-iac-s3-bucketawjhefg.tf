# module "plateng-iac-s3-bucketawjhefg" {
#   source = "terraform-aws-modules/s3-bucket/aws"

#   bucket        = "plateng-iac-s3-bucketawjhefg"
#   acl           = "private"
#   force_destroy = true
#   versioning = {
#     enabled = true
#   }
# }


resource "aws_s3_bucket" "plateng-iac-s3-bucketawjhefg" {
  bucket = "plateng-iac-s3-bucketawjhefg"

  tags = {
    Name        = "plateng-iac-s3-bucketawjhefg"
  }
}

output "plateng-iac-s3-bucketawjhefg_bucket_arn" {
  value = aws_s3_bucket.plateng-iac-s3-bucketawjhefg.arn
  description = "The ARN of the S3 bucket plateng-iac-s3-bucketawjhefg"
}
