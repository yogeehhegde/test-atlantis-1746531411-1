# module "plateng-iac-s3-bucket-02" {
#   source = "terraform-aws-modules/s3-bucket/aws"

#   bucket        = "plateng-iac-s3-bucket-02"
#   acl           = "private"
#   force_destroy = true
#   versioning = {
#     enabled = true
#   }
# }


resource "aws_s3_bucket" "plateng-iac-s3-bucket-02" {
  bucket = "plateng-iac-s3-bucket-02"

  tags = {
    Name        = "plateng-iac-s3-bucket-02"
  }
}
