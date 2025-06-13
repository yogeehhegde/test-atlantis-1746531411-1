# module "plateng-iac-s3-bucket-03" {
#   source = "terraform-aws-modules/s3-bucket/aws"

#   bucket        = "plateng-iac-s3-bucket-03"
#   acl           = "private"
#   force_destroy = true
#   versioning = {
#     enabled = true
#   }
# }


resource "aws_s3_bucket" "plateng-iac-s3-bucket-03" {
  bucket = "plateng-iac-s3-bucket-03"

  tags = {
    Name        = "plateng-iac-s3-bucket-03"
  }
}

output "plateng-iac-s3-bucket-03_bucket_arn" {
  value = aws_s3_bucket.plateng-iac-s3-bucket-03.arn
  description = "The ARN of the S3 bucket plateng-iac-s3-bucket-03"
}
