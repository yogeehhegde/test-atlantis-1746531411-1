# module "plateng-iac-s3-bucket-01" {
#   source = "terraform-aws-modules/s3-bucket/aws"

#   bucket        = "plateng-iac-s3-bucket-01"
#   acl           = "private"
#   force_destroy = true
#   versioning = {
#     enabled = true
#   }
# }


resource "aws_s3_bucket" "plateng-iac-s3-bucket-01" {
  bucket = "plateng-iac-s3-bucket-01"

  tags = {
    Name        = "plateng-iac-s3-bucket-01"
  }
}
