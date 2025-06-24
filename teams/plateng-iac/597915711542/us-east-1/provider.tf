terraform {
  backend "s3" {
    bucket = "iac-as-service-terraform-backend-test"
    key    = "plateng-iac/597915711542/us-east-1"
    region = "us-west-2"
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
  # assume_role {
  #   role_arn     = "arn:aws:iam::597915711542:role/atlantis-terraform"
  # }
  default_tags {
    tags = {
      "platform:team" = "plateng-iac"
      "tcss:owner"    = "plateng-iac"
      "region"        = "us-east-1"
    }
  }
}

