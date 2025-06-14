# module "plateng-iac-s3-bucket-my" {
#   source = "terraform-aws-modules/s3-bucket/aws"

#   bucket        = "plateng-iac-s3-bucket-my"
#   acl           = "private"
#   force_destroy = true
#   versioning = {
#     enabled = true
#   }
# }


resource "aws_s3_bucket" "plateng-iac-s3-bucket-my" {
  bucket = "plateng-iac-s3-bucket-my"

  tags = {
    Name        = "plateng-iac-s3-bucket-my"
  }
}

output "plateng-iac-s3-bucket-my_bucket_arn" {
  value = aws_s3_bucket.plateng-iac-s3-bucket-my.arn
  description = "The ARN of the S3 bucket plateng-iac-s3-bucket-my"
}
