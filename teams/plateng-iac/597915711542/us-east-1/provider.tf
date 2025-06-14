terraform {
  backend "s3" {
    bucket = "iac-as-service-terraform-backend-test"
    key    = "plateng-iac/597915711542/us-east-1"
    # role_arn = "arn:aws:iam::597915711542:role/atlantis-terraform"
    region = "us-east-1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
    "platform:team"       = "plateng-iac"
      "tcss:owner"          = "plateng-iac"
      "region"              = "us-east-1"
    }
  }
}

