variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
}
variable "bucket_prefix" {
  description = "The prefix to use for the S3 bucket"
  type        = string
  default     = ""
}

variable "acl" {
  description = "The canned ACL to apply"
  type        = string
  default     = "private"
}

variable "tags" {
  description = "A map of user-defined tags to assign to the bucket"
  type        = map(string)
  default     = {}
}
